import 'package:flutter/material.dart';

class DrawerModel {
  final String title;
  final String icon;
  final String? path;
  final Widget view;

  const DrawerModel(
      {required this.title, required this.icon, this.path, required this.view});
}
