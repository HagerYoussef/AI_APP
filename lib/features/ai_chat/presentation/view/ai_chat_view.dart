import 'package:ai_app/features/ai_chat/presentation/view/widgets/ai_chat_body_2.dart';
import 'package:flutter/material.dart';
import 'package:ai_app/features/ai_chat/presentation/view/widgets/ai_chat_body.dart';
import 'package:ai_app/features/ai_chat/presentation/view/widgets/empty_body.dart';
import 'package:ai_app/features/ai_chat/presentation/view/widgets/message_input_field.dart';
import '../../../some_screens/presenation/view/widgets/how_to_app_bar.dart';
import 'ai_chat_app_bar.dart';

class AiChatView extends StatefulWidget {
  const AiChatView({super.key});

  static const String routeName = 'Ai Chat';

  @override
  _AiChatViewState createState() => _AiChatViewState();
}

class _AiChatViewState extends State<AiChatView> {
  bool _showChat = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _showChat = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    String currentLanguage = Localizations.localeOf(context).languageCode;

    return Scaffold(
      appBar: const AiChatAppBar(),
      body: _showChat
          ? (currentLanguage == 'ar' ?  ChatScreenArabic() :  ChatScreen())
          : const EmptyBody(),
    );
  }
}
