import 'package:faramove_therapy/common/action_button.dart';
import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
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
            assetUrl: AssetStrings.searchIcon,
            onTap: () {},
          ),
          Gap(20.0.w),
        ],
      ),
      body: ListView.separated(
        itemCount: 40,
        itemBuilder: (context, index) {
          return CommunityListItem(
            communityType:
                index % 2 > 0 ? CommunityType.drugs : CommunityType.therapy,
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class CommunityListItem extends StatelessWidget {
  final CommunityType communityType;
  final Color bgColor;
  const CommunityListItem({
    super.key,
    this.communityType = CommunityType.drugs,
    this.bgColor = Colors.deepPurple,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 93.0,
            width: 100.0,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                if (communityType == CommunityType.drugs)
                  Positioned(
                    bottom: -6,
                    child: Center(
                        child: Image.asset(
                      AssetStrings.drugsBG,
                      width: 100,
                    )),
                  ),
                if (communityType == CommunityType.therapy) const TherapyBG(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 59.0,
                    margin: const EdgeInsets.all(10.0),
                    child: Text(
                      communityType == CommunityType.drugs
                          ? 'USE OF DRUGS'
                          : 'THERAPY',
                      style: const TextStyle(
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
          SizedBox(
            width: 240.0.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title Widget.
                const SizedBox(
                  width: 210.0,
                  child: Text(
                    'How to live with cancer and be mentally stable .',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                const Gap(7.0),
                //Attendees Count
                Row(
                  children: [
                    const TextIcon(
                      assetUrl: AssetStrings.profileIcon,
                      count: '200+',
                    ),
                    Gap(15.0.w),
                    const TextIcon(
                      assetUrl: AssetStrings.letterBoxIcon,
                      count: '50',
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Profile Images
                    const OverlappedProfileImages(),

                    //Join Button
                    ElevatedButton(onPressed: () {}, child: const Text('Join')),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OverlappedProfileImages extends StatelessWidget {
  const OverlappedProfileImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> profileImages = [
      AssetStrings.peopleOne,
      AssetStrings.peopleTwo,
      AssetStrings.peopleThree,
      AssetStrings.peopleFour,
    ];

    return SizedBox(
      width: 200.0,
      height: 28.0,
      child: Stack(
        children: List.generate(
          profileImages.length > 10 ? 10 : profileImages.length,
          (index) => Positioned(
            left: (19.0 * index),
            child: CircleAvatar(
              radius: 12.0,
              backgroundImage: AssetImage(profileImages[index]),
            ),
          ),
        ),
      ),
    );
  }
}

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

class TherapyBG extends StatelessWidget {
  const TherapyBG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          const Positioned(
            right: 14,
            top: 11,
            child: CircleAvatar(
              radius: 4.0,
            ),
          ),
          const Positioned(
            left: 11,
            top: 33,
            child: CircleAvatar(
              radius: 8.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 50,
              width: 100,
              child: Image.asset(
                AssetStrings.therapyBG,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum CommunityType {
  drugs,
  therapy,
}
