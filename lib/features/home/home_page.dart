import 'package:akshit_madan/features/contact_us/ui/desktop/contact_us_desktop_widget.dart';
import 'package:akshit_madan/features/highlights/ui/desktop/highlights_desktop_widget.dart';
import 'package:akshit_madan/features/intro/ui/desktop/intro_desktop_widget.dart';
import 'package:akshit_madan/features/navbar/navbar_widget.dart';
import 'package:akshit_madan/features/techstack/ui/desktop/techstack_desktop_widget.dart';
import 'package:akshit_madan/features/videos/ui/desktop/videos_desktop_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Column(
          children: [
            NavBarWidget(),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    IntroDesktopWidget(),
                    HighlightsDesktopWidget(),
                    TechstackDesktopWidget(),
                    VideosDesktopWidget(),
                    ContactUsDesktopWidget(),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
