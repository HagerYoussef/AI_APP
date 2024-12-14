import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';
import 'message_input_field.dart';

class EmptyBody extends StatefulWidget {
  const EmptyBody({super.key});

  @override
  _EmptyBodyState createState() => _EmptyBodyState();
}

class _EmptyBodyState extends State<EmptyBody> {
  TextEditingController _controller = TextEditingController();
  bool _isTyping = false;

  void _onTextChanged(String text) {
    setState(() {
      _isTyping = text.isNotEmpty;
    });
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {

      _controller.clear();
      setState(() {
        _isTyping = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagePaths.chat,
                            width: 210.74.w,
                            height: 236.69.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16.h),
                            child: Text(
                              AppLocalizations.of(context)!.translate('empty'),
                              style: TextStyle(
                                color: ColorApp.color13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              AppLocalizations.of(context)!.translate('empty2'),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: ColorApp.color14,
                                fontSize: 14.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: MessageInputField(
                  controller: _controller,

                  onTextChanged: _onTextChanged,
                  onSendMessage: _sendMessage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
