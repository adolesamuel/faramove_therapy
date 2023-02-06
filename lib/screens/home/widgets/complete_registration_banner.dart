import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
