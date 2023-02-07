import 'package:faramove_therapy/common/action_button.dart';
import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:faramove_therapy/screens/community/model/community.dart';
import 'package:faramove_therapy/screens/community/widgets/community_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    //List of communities
    final List<Community> communities = [
      Community(
        themeColor: const Color(0xFFEC6632),
        title: 'Talks about treatment, Pathways',
        communityType: CommunityType.drugs,
      ),
      Community(
        themeColor: const Color(0xFF6632EC),
        title: 'How was your first session experience?',
        communityType: CommunityType.drugs,
      ),
      Community(
        themeColor: const Color(0xFFECA532),
        title: 'How to live with cancer and be mentally stable.',
        communityType: CommunityType.drugs,
      ),
      Community(
        themeColor: const Color(0xFF505CF1),
        title: 'Is reliance on drugs a good thing',
        communityType: CommunityType.therapy,
      ),
      Community(
        themeColor: const Color(0xFF008ADD),
        title: 'Talks about treatment, Pathways',
        communityType: CommunityType.drugs,
      ),
      Community(
        themeColor: const Color(0xFFEC6632),
        title: 'Talks about treatment, Pathways',
        communityType: CommunityType.drugs,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
        centerTitle: false,
        actions: [
          ActionButton(
            assetUrl: AssetStrings.searchIcon,
            onTap: () {},
          ),
          Gap(20.0.w),
        ],
      ),
      body: ListView.separated(
        itemCount: communities.length,
        itemBuilder: (context, index) {
          return CommunityListItem(
            community: communities[index],
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
