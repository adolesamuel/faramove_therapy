import 'package:faramove_therapy/common/action_button.dart';
import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
        centerTitle: false,
        actions: [
          ActionButton(
            assetUrl: AssetStrings.messages,
            onTap: () {},
          ),
          Gap(20.0.w),
        ],
      ),

      // body: ListView.builder(itemBuilder: itemBuilder),
    );
  }
}
