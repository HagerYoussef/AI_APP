import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/cubit/language_cubit.dart';

class LanguageSelectionPage extends StatefulWidget {
  static const String routeName = 'Lang Screen';

  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String? selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Language',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                setState(() {
                  selectedLanguage = 'English';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedLanguage == 'English' ? Colors.blue.shade100 : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: selectedLanguage == 'English' ? Colors.blue : Colors.grey, // Border color
                    width: 2, // Border width for clarity
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'English',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    if (selectedLanguage == 'English')
                      const Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.green,
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // وضع اللغة العربية بعد الإنجليزية
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedLanguage = 'Arabic';
                  final languageCubit = BlocProvider.of<LanguageCubit>(context);
                  final currentLocale = Localizations.localeOf(context).languageCode;
                  String newLanguage = currentLocale == 'en' ? 'ar' : 'en';
                  languageCubit.changeLanguage(newLanguage);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedLanguage == 'Arabic' ? Colors.blue.shade100 : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: selectedLanguage == 'Arabic' ? Colors.blue : Colors.grey, // Border color
                    width: 2, // Border width for clarity
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Arabic',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    if (selectedLanguage == 'Arabic')
                      const Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.green,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
