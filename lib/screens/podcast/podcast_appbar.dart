import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PodCastAppBar extends StatelessWidget with PreferredSizeWidget {
  const PodCastAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const ImageIcon(
              AssetImage(AssetStrings.arrowDownIcon),
            ),
          ),
          const Text('Stay Motivated Ep. 1'),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage(
              AssetStrings.bookMarkIcon,
            ))),
        IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage(
              AssetStrings.arrowUpIcon,
            ))),
        Gap(20.0.w)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
