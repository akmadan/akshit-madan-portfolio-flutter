import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: AppColors.navBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Home'),
            ),
          ),
          InkWell(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Videos'),
            ),
          ),
          InkWell(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Contact'),
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
    );
  }
}
