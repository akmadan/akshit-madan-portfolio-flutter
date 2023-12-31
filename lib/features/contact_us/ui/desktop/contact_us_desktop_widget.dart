import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class ContactUsDesktopWidget extends StatelessWidget {
  const ContactUsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Contact Me',
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 20),
        const Text(
            "If you are a student, entrepreneur or just want to chat with me, drop me an interesting mail at 👇"),
        const SizedBox(height: 8),
        Text(
          'akmadan1717@gmail.com',
          style: TextStyle(color: AppColors.purple),
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              socialIcon('https://www.instagram.com/akshitmadan_/',
                  SocialIconsFlutter.instagram),
              socialIcon(
                  'https://github.com/akmadan', SocialIconsFlutter.github),
              socialIcon('https://www.linkedin.com/in/akshit-madan-394a82a6/',
                  SocialIconsFlutter.linkedin_box),
              socialIcon(
                  'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                  SocialIconsFlutter.youtube)
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: 20),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Coded by Akshit with 💚 in India'),
            ],
          ),
        )
      ]),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
