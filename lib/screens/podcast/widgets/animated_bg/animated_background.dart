import 'package:faramove_therapy/screens/podcast/widgets/animated_bg/re_written_particle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerBackground extends StatefulWidget {
  const PlayerBackground({super.key});

  @override
  State<PlayerBackground> createState() => _PlayerBackgroundState();
}

class _PlayerBackgroundState extends State<PlayerBackground> {
  @override
  Widget build(BuildContext context) {
    return CircularParticle(
      key: UniqueKey(),
      awayRadius: 80,
      numberOfParticles: 50,
      speedOfParticles: 0.8,
      height: 350.0.h,
      width: 350.0.w,
      onTapAnimation: true,
      particleColor: Colors.white.withAlpha(150),
      awayAnimationDuration: const Duration(milliseconds: 600),
      maxParticleSize: 15,
      isRandSize: true,
      isRandomColor: true,
      randColorList: [
        Colors.red.withAlpha(210),
        Colors.white.withAlpha(210),
        Colors.yellow.withAlpha(210),
        Colors.green.withAlpha(210)
      ],
      awayAnimationCurve: Curves.easeInOutBack,
      enableHover: true,
      hoverColor: Colors.white,
      hoverRadius: 90,
      connectDots: false, //not recommended
    );
  }
}
