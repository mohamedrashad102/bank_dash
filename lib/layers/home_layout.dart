import 'package:bank_dash/core/widgets/adaptive_layout.dart';
import 'package:bank_dash/layers/desktop_layout/home/views/desktop_home_view.dart';
import 'package:bank_dash/layers/mobile_layout/home/views/mobile_home_view.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileHomeView(),
      tabletLayout: (context) => const Center(
        child: Text('tablet'),
      ),
      desktopLayout: (context) => const DesktopHomeView(),
    );
  }
}
