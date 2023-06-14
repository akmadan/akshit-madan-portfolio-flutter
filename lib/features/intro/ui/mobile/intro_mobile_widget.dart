import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroMobileWidget extends StatelessWidget {
  const IntroMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          // const Align(
          //   alignment: Alignment.topCenter,
          //   child: RiveAnimation.asset(AppAnimations.introAnimation),
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(AppImages.selfImage),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Preah',
                        fontSize: 24,
                        height: 1),
                    children: [
                      TextSpan(
                          text: 'Akshit Madan ',
                          style: TextStyle(color: AppColors.purple))
                    ]),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      onTap: () =>
                          launchUrl(Uri.parse('https://github.com/akmadan')),
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
                        link:
                            'https://www.linkedin.com/in/akshit-madan-394a82a6/',
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
              const SizedBox(height: 30),
              const Text(
                'A Solopreneur,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 14),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        height: 1.4,
                        fontFamily: 'Preah',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    children: [
                      const TextSpan(text: 'Crafting code to bring '),
                      const TextSpan(text: 'ideas to '),
                      TextSpan(
                          text: 'life',
                          style: TextStyle(color: AppColors.purple)),
                      const TextSpan(text: '...')
                    ]),
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "I'm a Software Engineer & ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Preah', fontSize: 16),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Preah',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' a Tech YouTuber ',
                              style: TextStyle(
                                  backgroundColor: Colors.yellowAccent,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' who loves sharing his coding journey!')
                        ]),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
