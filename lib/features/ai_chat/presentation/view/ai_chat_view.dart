import 'package:ai_app/features/ai_chat/presentation/view/widgets/ai_chat_body.dart';
import 'package:ai_app/features/ai_chat/presentation/view/widgets/empty_body.dart';
import 'package:flutter/material.dart';

import '../../../some_screens/presenation/view/widgets/how_to_app_bar.dart';
import 'ai_chat_app_bar.dart';


class AiChatView extends StatelessWidget {
  const AiChatView({super.key});

  static const String routeName = 'Ai Chat';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AiChatAppBar(),
      body: AiChatBody(),
    );
  }
}
