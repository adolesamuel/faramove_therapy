import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:faramove_therapy/screens/home/home_page_appbar.dart';
import 'package:faramove_therapy/screens/home/widgets/quick_actions_card.dart';
import 'package:faramove_therapy/screens/home/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'widgets/complete_registration_banner.dart';

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
      appBar: const HomePageAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CompleteRegistrationBanner(),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 6.0),
            child: Text(
              'Quick Actions',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                QuickActionsCard(
                  title: 'Book a session',
                  subtitleText:
                      'Get prompt assistance from medical professionals.',
                  assetUrl: AssetStrings.stethBg,
                  color: const Color(0xFFEEAD44),
                  onTap: () {},
                ),
                Gap(14.0.h),
                QuickActionsCard(
                  title: 'Diary',
                  subtitleText:
                      'Listen to the highlight from your previous session',
                  assetUrl: AssetStrings.bookBg,
                  color: const Color(0xFFEE7444),
                  onTap: () {},
                ),
                Gap(14.0.h),
                QuickActionsCard(
                  title: 'Virtual assistant',
                  subtitleText:
                      'Get easy access to converse with the assistant on how you feel',
                  assetUrl: AssetStrings.headsetBg,
                  color: const Color(0xFF7444EE),
                  onTap: () {},
                ),
                Gap(20.0.h),
              ],
            ),
          ),
          //Bottom Buttons.
          Divider(
            height: 6.0.h,
            color: const Color(0xFFF8F9FB),
          ),

          //
          TipsCard(
            title: 'Upcoming Session (0)',
            onTap: () {},
          ),

          //
          Divider(
            height: 6.0.h,
            color: const Color(0xFFF8F9FB),
          ),
          //
          TipsCard(
            title: 'Tips to stay healthy',
            subtitle: 'Get simple health tips.',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
