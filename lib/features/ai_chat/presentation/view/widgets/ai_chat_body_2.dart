import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';
import 'custome_message_widget_arabic.dart';
import 'custome_widget.dart';
import 'message_input_field.dart';

class ChatScreenArabic extends StatefulWidget {
  @override
  _ChatScreenArabicState createState() => _ChatScreenArabicState();
}

class _ChatScreenArabicState extends State<ChatScreenArabic> {
  TextEditingController _controller = TextEditingController();
  bool _isTyping = false;

  List<Widget> _messages = [];

  @override
  void initState() {
    super.initState();
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      String textToSend = _controller.text;


      String translatedText = AppLocalizations.of(context)!.translate(textToSend) ?? textToSend;

      setState(() {

        _messages.add(
          CustomMessageWidgetArabic(
            gradientColors: [ColorApp.color17, ColorApp.color18],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              topLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
            imagePath: ImagePaths.new3,
            txt: translatedText,
            isAI: false,
          ),
        );
        _controller.clear();

        Future.delayed(Duration(seconds: 1), () {
          setState(() {

            String translatedResponse = AppLocalizations.of(context)!.translate('tellme') ?? 'AI response';

            _messages.add(
              CustomMessageWidgetArabic(
                gradientColors: [ColorApp.color17, ColorApp.color18],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  topLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
                imagePath: ImagePaths.new2,
                txt: translatedResponse,  // النص المترجم من AI
                isAI: true,
              ),
            );
          });
        });
      });
    }
  }


  void _onTextChanged(String text) {
    setState(() {
      _isTyping = text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_messages.isEmpty) {
      _messages.add(
        CustomMessageWidgetArabic(
          gradientColors: [ColorApp.color17, ColorApp.color18],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.r),
            topLeft: Radius.circular(15.r),
            bottomRight: Radius.circular(15.r),
          ),
          imagePath: ImagePaths.new2,
          txt: AppLocalizations.of(context)!.translate('hello2'),
          isAI: true,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _messages[index];
              },
            ),
          ),
          MessageInputField(
            controller: _controller,
            onTextChanged: _onTextChanged,
            onSendMessage: _sendMessage,
          ),
        ],
      ),
    );
  }
}
