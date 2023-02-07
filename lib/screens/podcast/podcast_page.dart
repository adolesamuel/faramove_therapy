import 'package:faramove_therapy/constants/asset_strings.dart';
import 'package:faramove_therapy/screens/podcast/podcast_appbar.dart';
import 'package:faramove_therapy/screens/podcast/widgets/animated_bg/animated_background.dart';
import 'package:faramove_therapy/screens/podcast/widgets/expand_button.dart';
import 'package:faramove_therapy/screens/podcast/widgets/player_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PodCastPage extends StatefulWidget {
  static const route = '/podcast';
  const PodCastPage({super.key});

  @override
  State<PodCastPage> createState() => _PodCastPageState();
}

class _PodCastPageState extends State<PodCastPage> {
  late final DraggableScrollableController dragController;
  @override
  void initState() {
    super.initState();
    dragController = DraggableScrollableController();
  }

  @override
  void dispose() {
    super.dispose();
    dragController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PodCastAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xEEE5EFFE),
                          Color(0xEEF5EEF0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    height: 321.0.h,
                    width: 334.0.w,
                    child: Center(
                      child: Image.asset(
                        AssetStrings.stayInspiredTextImage,
                        scale: 3,
                      ),
                    ),
                  ),
                  const PlayerBackground(),
                ],
              ),
              Gap(25.0.h),
              const PlayerControls(),
            ],
          ),
          //Lyrics
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 335.0.w,
              child: DraggableScrollableSheet(
                controller: dragController,
                minChildSize: 0.1,
                maxChildSize: 0.4,
                initialChildSize: 0.1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 12.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF3079EC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.0),
                        topRight: Radius.circular(6.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Controls
                            SizedBox(
                              height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Transcript',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  ExpandButton(
                                    text: !dragController.isAttached
                                        ? 'EXPAND'
                                        : dragController.size > 0.1
                                            ? 'SHRINK'
                                            : 'EXPAND',
                                    onTap: () {
                                      if (dragController.size < 0.3) {
                                        dragController.animateTo(0.4,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeInOut);
                                      } else {
                                        dragController.animateTo(0.0,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeInOut);
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),

                            //Lyrics sheets
                            const Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                child: Text(
                                  'The Sweet Chariot that takes you to valhalla is at the end of everything glorious\n\n'
                                  'May your focus ever remain as sharp as an Axe drenched in the sweat of blacksmiths from Kattegatt\n\n'
                                  'May your horse ride Bold and True\n\n'
                                  'May your eyes stay sharp\n\n'
                                  'May Odin welcome you with Joy for you have been Victorious\n\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
