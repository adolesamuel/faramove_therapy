import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExpandButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const ExpandButton({
    super.key,
    this.onTap,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(134, 114, 161, 236),
      borderRadius: BorderRadius.circular(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                ),
              ),
              const Gap(4.0),
              SizedBox(
                height: 20.0,
                child: Column(
                  children: const [
                    ImageIcon(
                      AssetImage(AssetStrings.externalLinkIcon),
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
