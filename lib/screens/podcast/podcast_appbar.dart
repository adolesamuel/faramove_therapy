import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PodCastAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PodCastAppBar({super.key});

  @override
  State<PodCastAppBar> createState() => _PodCastAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _PodCastAppBarState extends State<PodCastAppBar> {
  bool isSaved = false;

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
            onPressed: () {
              setState(() {
                isSaved = !isSaved;
              });
            },
            icon: isSaved
                ? const Icon(
                    Icons.bookmark,
                    color: Colors.yellow,
                  )
                : const ImageIcon(AssetImage(
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
}
