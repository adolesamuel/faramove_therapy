
import 'package:flutter/material.dart';

class Community {
  final Color themeColor;
  final String title;
  final CommunityType communityType;

  Community({
    required this.themeColor,
    required this.title,
    required this.communityType,
  });
}

enum CommunityType {
  drugs,
  therapy,
}
