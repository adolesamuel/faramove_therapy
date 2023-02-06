import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String assetUrl;
  final Function()? onTap;
  const ActionButton({
    super.key,
    required this.assetUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: const Color(0xFFF8F9FB),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Image.asset(
              assetUrl,
              height: 25.67,
              width: 25.67,
            ),
          ),
        ),
      ),
    );
  }
}
