import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:faramove_therapy/screens/community/model/community.dart';
import 'package:faramove_therapy/screens/community/widgets/overlapped_profile_image.dart';
import 'package:faramove_therapy/screens/community/widgets/therapy_background.dart';
import 'package:faramove_therapy/screens/community/widgets/text_icon.dart';
import 'package:faramove_therapy/screens/podcast/podcast_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CommunityListItem extends StatelessWidget {
  final Community community;
  const CommunityListItem({
    super.key,
    required this.community,
  });

  @override
  Widget build(BuildContext context) {
    final title = community.title;
    final communityType = community.communityType;
    final bgColor = community.themeColor;
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
                SizedBox(
                  width: 210.0,
                  child: Text(
                    title,
                    style: const TextStyle(
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

                const Gap(7.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Profile Images
                    const OverlappedProfileImages(),

                    //Join Button
                    SizedBox(
                      height: 32.0.h,
                      width: 78.0.w,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF3079EC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0))),
                          onPressed: () {
                            Navigator.pushNamed(context, PodCastPage.route);
                          },
                          child: const Text('Join')),
                    ),
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
