import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsMobileWidget extends StatelessWidget {
  const ContactUsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Contact Me',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 8),
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
              InkWell(
                onTap: () => launchUrl(
                    Uri.parse('https://www.instagram.com/akshitmadan_/')),
                child: SocialWidget(
                  iconSize: 16,
                  placeholderText: '',
                  iconData: SocialIconsFlutter.instagram,
                  iconColor: Colors.white,
                  link: 'https://www.instagram.com/akshitmadan_/',
                ),
              ),
              InkWell(
                onTap: () => launchUrl(Uri.parse('https://github.com/akmadan')),
                child: SocialWidget(
                  iconSize: 16,
                  placeholderText: '',
                  iconData: SocialIconsFlutter.github,
                  iconColor: Colors.white,
                  link: 'https://github.com/akmadan',
                ),
              ),
              InkWell(
                onTap: () => launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/akshit-madan-394a82a6/')),
                child: SocialWidget(
                  iconSize: 16,
                  placeholderText: '',
                  iconData: SocialIconsFlutter.linkedin_box,
                  iconColor: Colors.white,
                  link: 'https://www.linkedin.com/in/akshit-madan-394a82a6/',
                ),
              ),
              InkWell(
                onTap: () => launchUrl(Uri.parse(
                    'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg')),
                child: SocialWidget(
                  placeholderText: '',
                  iconSize: 16,
                  iconData: SocialIconsFlutter.youtube,
                  iconColor: Colors.white,
                  link:
                      'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                ),
              )
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
}
