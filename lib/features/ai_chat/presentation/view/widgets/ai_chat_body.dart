import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';
import 'custome_widget.dart';
import 'message_input_field.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
          CustomMessageWidget(
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
              CustomMessageWidget(
                gradientColors: [ColorApp.color17, ColorApp.color18],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomLeft: Radius.circular(15.r),
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
        CustomMessageWidget(
          gradientColors: [ColorApp.color17, ColorApp.color18],
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
            bottomLeft: Radius.circular(15.r),
          ),
          imagePath: ImagePaths.new2,
          txt: AppLocalizations.of(context)!.translate('hello2'),
          isAI: true,
        ),
      );
    }

    return Scaffold(

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
