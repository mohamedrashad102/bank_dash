import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for something',
          contentPadding: const EdgeInsets.only(top: -2),
          hintStyle: AppStyles.regular.fontSize15(context),
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search, color: AppColors.primary1),
          constraints: const BoxConstraints(maxHeight: 30),
        ),
      ),
    );
  }
}
