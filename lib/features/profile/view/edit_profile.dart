import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../payment/presenation/view/widgets/custom_button.dart';

class EditProfilePage extends StatelessWidget {
  static const String routeName = 'Edit Profile';

  final TextEditingController nameController = TextEditingController(text: 'Ziad Mohamed');
  final TextEditingController usernameController = TextEditingController(text: 'Ziad hamdy12');
  final TextEditingController phoneController = TextEditingController(text: '01023456789');
  final TextEditingController emailController = TextEditingController(text: 'Ziad hamdy222@gmail.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    child: const Text("Cancel",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color:Color(0xffB42F2F)
                    ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // صورة البروفايل
              const CircleAvatar(
                radius: 92,
                backgroundImage: AssetImage('assets/images/home/circle_profile.png'),
              ),
              const SizedBox(height: 20),

              // الحقول المدخلة
              _buildCustomTextField(
                controller: nameController,
                label: 'Name',
                imageUrl: 'assets/images/login/person.png',
              ),
              _buildCustomTextField(
                controller: usernameController,
                label: 'Username',
                imageUrl: 'assets/images/login/person.png',
              ),
              _buildCustomTextField(
                controller: phoneController,
                label: 'Phone number',
                imageUrl: 'assets/images/login/Call.png',
              ),
              _buildCustomTextField(
                controller: emailController,
                label: 'Email Address',
                imageUrl: 'assets/images/login/email.png',
              ),

              const SizedBox(height: 30),

              CustomButton(text: 'Save', onPressed: () {  }, w: 357.w,)
            ],
          ),
        ),
      ),
    );
  }

  // ميثود لإنشاء TextField بشكل مخصص
  Widget _buildCustomTextField({
    required TextEditingController controller,
    required String label,
    required String imageUrl,
  }) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: 16.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff19488E)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 15),
              child: Row(
                children: [
                  Image.asset(
                    imageUrl, // الصورة
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    label, // النص
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',color: Color(0xff92979E)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 250,

                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: InputBorder.none, // إزالة الحدود الافتراضية
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
