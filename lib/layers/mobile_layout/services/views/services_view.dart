import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Services',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
