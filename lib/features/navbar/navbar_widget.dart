import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/app_marquee_widget.dart';
import 'package:akshit_madan/design/widgets/buttons/app_outlined_button.dart';
import 'package:akshit_madan/features/navbar/ui/desktop/navbar_desktop_widget.dart';
import 'package:akshit_madan/features/navbar/ui/mobile/navbar_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const NavBarDesktopWidget(),
      tablet: (p0) => const NavBarMobileWidget(),
      mobile: (p0) => const NavBarMobileWidget(),
    );
  }
}
