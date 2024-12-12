import 'package:ai_app/features/profile/view/widgets/setting_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../view_model/cubit/theme_cubit.dart';

class SettingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Column(
        children: [
          SettingsTile(
            icon: Icons.nightlight_round,
            title:   AppLocalizations.of(context)!.translate('dark'),
            trailing: Switch(
              value: context.read<ThemeCubit>().state == ThemeState.dark,
              onChanged: (bool value) {
                context.read<ThemeCubit>().toggleTheme();
              },
            ),
          ),
          SettingsTile(
            icon: Icons.notifications_none_outlined,
            title:   AppLocalizations.of(context)!.translate('not'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
          SettingsTile(
            icon: Icons.language,
            title:   AppLocalizations.of(context)!.translate('lang'),

            trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Lang Screen");
                }, icon: const Icon(Icons.arrow_forward_ios)),
            onTap: () {
              Navigator.pushNamed(context, "Profile Screen");
            },
          ),
          SettingsTile(
            icon: Icons.payment,
            title:   AppLocalizations.of(context)!.translate('pay'),
            onTap: () {
              Navigator.pushNamed(context, "Payment Screen");
            },
          ),
          SettingsTile(
            icon: Icons.history_rounded,
            title:   AppLocalizations.of(context)!.translate('hist'),
            trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "History Screen");
                },
                icon: const Icon(Icons.arrow_forward_ios)),
            onTap: () {
              Navigator.pushNamed(context, "Home Page");
            },
          ),
          SettingsTile(
            icon: Icons.help_outline_rounded,
            title:   AppLocalizations.of(context)!.translate('help'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "Home Page");
            },
          ),
          ListTile(
            leading: Text(  AppLocalizations.of(context)!.translate('log'),
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: state == ThemeState.dark
                      ? Colors.white
                      : ColorApp.profile_color,
                )),
            trailing: const Icon(Icons.logout),
          )
        ],
      );
    });
  }
}
