import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
          height: 110.0.h,
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
