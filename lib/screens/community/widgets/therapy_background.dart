import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';

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
              backgroundColor: Color(0xFF434DCA),
            ),
          ),
          const Positioned(
            left: 11,
            top: 33,
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Color(0xFF434DCA),
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
