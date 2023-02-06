import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:faramove_therapy/screens/home_page_appbar.dart';
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
          )
        ],
      ),
    );
  }
}

class CompleteRegistrationBanner extends StatelessWidget {
  const CompleteRegistrationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0.h,
      child: Material(
        color: const Color(0xFFF1F6FE),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Row(
                children: [
                  Gap(20.0.w),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: const Color(0xFFDEEAFD),
                    child: Image.asset(
                      AssetStrings.emergencyTriangle,
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                  Gap(12.0.w),
                  const Text(
                    'Go to your profile to complete \nregistration',
                  ),
                  const Spacer(),
                  Image.asset(
                    AssetStrings.dashArrow,
                    height: 16.0,
                    width: 26.43,
                  ),
                  Gap(20.0.w),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuickActionsCard extends StatelessWidget {
  final String title;
  final String subtitleText;
  final String assetUrl;
  final Color color;
  final Function()? onTap;
  const QuickActionsCard({
    super.key,
    required this.title,
    required this.subtitleText,
    required this.assetUrl,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(6.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6.0),
        child: Container(
          height: 105.0.h,
          width: 335.0.w,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 9.36.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(
                  width: 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Title
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Gap(10.0.h),

                      //SubtitleText
                      Text(
                        subtitleText,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),

              //Image
              Image.asset(
                assetUrl,
                height: 100,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
