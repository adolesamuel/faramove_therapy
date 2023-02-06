import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../common/action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar.
      appBar: AppBar(
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
            assetUrl: AssetStrings.notification,
            onTap: () {},
          ),
          Gap(16.0.w),
          ActionButton(
            assetUrl: AssetStrings.messages,
            onTap: () {},
          ),
          Gap(20.0.w),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
