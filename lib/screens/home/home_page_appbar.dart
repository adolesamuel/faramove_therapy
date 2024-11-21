import 'package:faramove_therapy/common/action_button.dart';
import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            radius: 16.0,
            child: Image.asset(AssetStrings.accountHome),
          ),
          Gap(10.0.w),
          const Text('Hi, Sarah'),
        ],
      ),
      actions: [
        ActionButton(
          assetUrl: AssetStrings.messages,
          onTap: () {},
        ),
        Gap(16.0.w),
        ActionButton(
          assetUrl: AssetStrings.notification,
          onTap: () {},
        ),
        Gap(20.0.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
