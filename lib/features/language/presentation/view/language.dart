import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
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
      backgroundColor: ColorApp.color33,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppLocalizations.of(context)!.translate('Language'),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorApp.home_color,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildLanguageOption(
                context: context,
                language: AppLocalizations.of(context)!.translate('English'),
                isSelected: selectedLanguage == 'English',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'English';
                  });
                  final languageCubit = BlocProvider.of<LanguageCubit>(context);
                  final newLanguage = 'en';
                  languageCubit.changeLanguage(newLanguage);
                },
              ),
              const SizedBox(height: 10),
              _buildLanguageOption(
                context: context,
                language: AppLocalizations.of(context)!.translate('Arabic'),
                isSelected: selectedLanguage == 'Arabic',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'Arabic';
                  });
                  final languageCubit = BlocProvider.of<LanguageCubit>(context);
                  final newLanguage = 'ar';
                  languageCubit.changeLanguage(newLanguage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageOption({
    required BuildContext context,
    required String language,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              language,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check,
                size: 20,
                color: ColorApp.profile_color,
              ),
          ],
        ),
      ),
    );
  }
}
