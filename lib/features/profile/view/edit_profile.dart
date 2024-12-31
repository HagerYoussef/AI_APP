import 'dart:io';
import 'package:ai_app/features/profile/view/widgets/custom_text_field.dart';
import 'package:ai_app/features/profile/view/widgets/profile_image_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/localization/app_localization.dart';
import '../../../core/themes/colors.dart';
import '../../../core/utils/image_paths.dart';
import '../../payment/presenation/view/widgets/custom_button.dart';

class EditProfilePage extends StatefulWidget {
  static const String routeName = 'Edit Profile';

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();
  late TextEditingController nameController;
  late TextEditingController usernameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    usernameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    _loadData();
  }


  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('userName') ??  AppLocalizations.of(context)!.translate('ziad2');
      usernameController.text = prefs.getString('userName') ??  AppLocalizations.of(context)!.translate('ziad3');
      phoneController.text = prefs.getString('phone') ?? AppLocalizations.of(context)!.translate('phone');
      emailController.text = prefs.getString('email') ?? 'Ziad hamdy222@gmail.com';

      print('ProfileImage: ${prefs.getString('profileImage')}');
      String? imagePath = prefs.getString('profileImage');
      if (imagePath != null) {
        _profileImage = File(imagePath);
      }
    });
  }

  _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('userName', nameController.text);
    prefs.setString('userName', usernameController.text);
    prefs.setString('phone', phoneController.text);
    prefs.setString('email', emailController.text);
    if (_profileImage != null) {
      prefs.setString('profileImage', _profileImage!.path);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Align(
                  alignment: AppLocalizations.of(context)!.locale.languageCode == 'ar'
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate('cancel'),
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: ColorApp.color21,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              ProfileImageWidget(
                profileImage: _profileImage,
                onTap: _pickImage,
              ),
              SizedBox(height: 20.h),
              _buildCustomTextField(
                controller: nameController,
                label: AppLocalizations.of(context)!.translate('name'),
                imageUrl: ImagePaths.person3,
              ),
              _buildCustomTextField(
                controller: usernameController,
                label: AppLocalizations.of(context)!.translate('usr'),
                imageUrl: ImagePaths.person3,
              ),
              _buildCustomTextField(
                controller: phoneController,
                label: AppLocalizations.of(context)!.translate('phonenum'),
                imageUrl: ImagePaths.call,
              ),
              _buildCustomTextField(
                controller: emailController,
                label: AppLocalizations.of(context)!.translate('emailAdd'),
                imageUrl: ImagePaths.email2,
              ),
              SizedBox(height: 30.h),
              CustomButton(
                text: AppLocalizations.of(context)!.translate('sv'),
                onPressed: _saveData,
                w: 357.w,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  Widget _buildCustomTextField({
    required TextEditingController controller,
    required String label,
    required String imageUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: CustomTextField(
        controller: controller,
        label: label,
        imageUrl: imageUrl,
      ),
    );
  }
}