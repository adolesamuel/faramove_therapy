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
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CommunityListItem();
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class CommunityListItem extends StatelessWidget {
  const CommunityListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 93.0,
          width: 100.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 49.0,
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    'USE OF DRUGS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(17.85.w),
        Container(
          width: 240.0.w,
        )
      ],
    );
  }
}
