import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/colors.dart';
import '../../view_model/cubit/theme_cubit.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color:
            state == ThemeState.dark ? Colors.white : ColorApp.profile_color,
          ),
        );
      }),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
