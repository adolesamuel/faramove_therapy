
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TextIcon extends StatelessWidget {
  final String assetUrl;
  final String count;
  const TextIcon({
    super.key,
    required this.assetUrl,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageIcon(
          AssetImage(assetUrl),
          size: 15,
          color: const Color(0xFF888D95),
        ),
        Gap(4.0.w),
        Text(count),
      ],
    );
  }
}
