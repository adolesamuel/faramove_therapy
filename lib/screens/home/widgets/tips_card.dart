import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TipsCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Function()? onTap;
  const TipsCard({
    super.key,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0.h,
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Row(
                children: [
                  Gap(20.0.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (subtitle != null) ...[
                        Gap(3.0.h),
                        Text(
                          subtitle!,
                          style: const TextStyle(
                            color: Color(0xFF888D95),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]
                    ],
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
