import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerControls extends StatefulWidget {
  const PlayerControls({super.key});

  @override
  State<PlayerControls> createState() => _PlayerControlsState();
}

class _PlayerControlsState extends State<PlayerControls> {
  bool isSpeakerActive = true;
  final Duration sliderValueMax = const Duration(minutes: 5);
  Duration sliderActiveValue = const Duration(minutes: 1);

  String formatDur(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 32.0.h),
      child: Column(
        children: [
          //Text and Speaker button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '10 reasons',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Stay Inspired - Episode 1',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Color(0xFF888D95),
                    ),
                  ),
                ],
              ),
              //Mute/UnMute
              IconButton(
                  onPressed: () {
                    setState(() {
                      isSpeakerActive = !isSpeakerActive;
                    });
                  },
                  icon: isSpeakerActive
                      ? const ImageIcon(AssetImage(AssetStrings.speakerIcon))
                      : const Icon(Icons.volume_mute)),
            ],
          ),

          //Slider
          Slider(
              max: sliderValueMax.inSeconds.toDouble(),
              value: sliderActiveValue.inSeconds.toDouble(),
              onChanged: (value) {
                setState(() {
                  sliderActiveValue = Duration(seconds: value.toInt());
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatDur(sliderActiveValue)),
              Text('-${formatDur(sliderValueMax - sliderActiveValue)}'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '1x',
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous)),
              IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
            ],
          )
        ],
      ),
    );
  }
}
