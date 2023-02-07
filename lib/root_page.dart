import 'package:faramove_therapy/screens/community/community_page.dart';
import 'package:faramove_therapy/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'constants/asset_strings.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List pages = [
    const HomePage(),
    Container(),
    Container(),
    const CommunityPage(),
    Container(),
  ];

  Widget navIcon(String navigationAsset, [bool useImage = false]) {
    return useImage
        ? Image.asset(
            navigationAsset,
            height: 20,
            width: 20,
          )
        : ImageIcon(
            AssetImage(navigationAsset),
          );
  }

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          if (value < pages.length) {
            setState(() {
              pageIndex = value;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        selectedIconTheme:
            IconThemeData(size: 20, color: Theme.of(context).primaryColor),
        unselectedIconTheme: const IconThemeData(
            size: 20.0, color: AppColors.disabledNavBarColor),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: navIcon(AssetStrings.homeIcon),
            activeIcon: navIcon(AssetStrings.homeActiveIcon, true),
          ),
          BottomNavigationBarItem(
            label: 'Resources',
            icon: navIcon(AssetStrings.resourcesIcon),
          ),
          BottomNavigationBarItem(
            label: 'Session',
            icon: navIcon(AssetStrings.sessionIcon),
          ),
          BottomNavigationBarItem(
            label: 'Community',
            icon: navIcon(AssetStrings.communityIcon),
            activeIcon: navIcon(AssetStrings.communityActiveIcon),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: navIcon(AssetStrings.accountIcon, true),
          ),
        ],
      ),
    );
  }
}
