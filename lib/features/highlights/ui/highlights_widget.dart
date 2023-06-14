import 'package:akshit_madan/features/highlights/ui/desktop/highlights_desktop_widget.dart';
import 'package:akshit_madan/features/highlights/ui/mobile/highlights_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HighlightsWidget extends StatelessWidget {
  const HighlightsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const HighlightsDesktopWidget();
      },
      mobile: (p0) {
        return const HighlightsMobileWidget();
      },
    );
  }
}
