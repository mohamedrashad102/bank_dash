import 'package:flutter/material.dart';

class SettingsTabBarModel {
  final String title;
  final Widget mobileBody;
  final Widget desktopBody;

  const SettingsTabBarModel({
    required this.title,
    required this.mobileBody,
    required this.desktopBody,
  });
}
