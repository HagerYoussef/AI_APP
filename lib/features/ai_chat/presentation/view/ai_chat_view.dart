import 'package:flutter/material.dart';
import 'ai_chat_app_bar.dart';

class AiChatView extends StatelessWidget {
  const AiChatView({super.key});

  static const String routeName = 'Ai Chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HowToAppBar(title: 'Good Morning'),
      body: Column(
        children: [
          Expanded( // استخدم Expanded لتوسيع Stack داخل Column
            child: Stack(
              children: [
                // العنصر على اليسار
                Positioned(
                  top: 47,
                  left: 47,
                  child: SizedBox(
                    width: 259,
                    height: 51,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF164992), // اللون الأول #164992
                            Color(0xFF5AA6F4), // اللون الثاني #5AA6F4
                          ],
                          stops: [0.115, 1.0],
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 1,
                  left: 1,
                  child: SizedBox(
                    width: 47,
                    height: 47,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chat/new.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.zero,
                        ),
                      ),
                    ),
                  ),
                ),

                // العنصر على اليمين مع المسافة بين العناصر
                Positioned(
                  top: 100, // زيادة المسافة بين العنصرين
                  right: 47,
                  child: SizedBox(
                    width: 259,
                    height: 51,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF164992), // اللون الأول #164992
                            Color(0xFF5AA6F4), // اللون الثاني #5AA6F4
                          ],
                          stops: [0.115, 1.0],
                        ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.zero,
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 54, // تعديل المسافة بين العنصرين
                  right: 1,
                  child: SizedBox(
                    width: 47,
                    height: 47,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/chat/new2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.zero,
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
