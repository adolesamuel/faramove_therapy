import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';

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
      width: 100.0,
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
