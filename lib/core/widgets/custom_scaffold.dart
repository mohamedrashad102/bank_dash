import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    this.body,
  });
  final String title;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      drawer: const CustomDrawer(),
      body: body,
    );
  }
}
