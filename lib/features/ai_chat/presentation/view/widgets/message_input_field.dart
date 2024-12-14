import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';


class MessageInputField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onTextChanged;
  final VoidCallback onSendMessage;

  const MessageInputField({
    required this.controller,
    required this.onTextChanged,
    required this.onSendMessage,
    Key? key,
  }) : super(key: key);

  @override
  _MessageInputFieldState createState() => _MessageInputFieldState();
}

class _MessageInputFieldState extends State<MessageInputField> {
  late bool _isTyping;

  @override
  void initState() {
    super.initState();
    _isTyping = widget.controller.text.isNotEmpty;
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isTyping = widget.controller.text.isNotEmpty;
    });
    widget.onTextChanged(widget.controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 7.w),
        child: Container(
          width: 400.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: ColorApp.color15,
            borderRadius: BorderRadius.circular(25.r),
            border: Border.all(
              color: ColorApp.color15,
              width: 0.5.w,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: ColorApp.color9,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: TextField(
                    controller: widget.controller,
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    onChanged: (text) {
                      _onTextChanged();
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                    ),
                  ),
                ),
              ),

              (!_isTyping && isKeyboardOpen)
                  ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    ImagePaths.img,
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    ImagePaths.mic,
                    width: 40,
                    height: 40,
                  ),
                ],
              )
                  : IconButton(
                icon: Image.asset(
                  ImagePaths.shareEn2,
                  width: 40,
                  height: 40,
                ),
                onPressed: widget.onSendMessage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

