import 'package:akshit_madan/design/constants/app_animations.dart';
import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class IntroDesktopWidget extends StatelessWidget {
  const IntroDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomRight,
            child: RiveAnimation.asset(AppAnimations.introAnimation),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Row(
                children: [
                  CircleAvatar(
                    radius: w / 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: w / 14 - 4,
                      backgroundImage: const AssetImage(AppImages.selfImage),
                    ),
                  ),
                  const SizedBox(width: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Preah',
                                fontSize: w / 40),
                            children: [
                              const TextSpan(text: 'I am '),
                              TextSpan(
                                  text: 'Akshit Madan ',
                                  style: TextStyle(color: AppColors.purple))
                            ]),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'A Solopreneur,',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.2,
                                fontFamily: 'Preah',
                                fontSize: w / 20,
                                fontWeight: FontWeight.bold),
                            children: [
                              const TextSpan(text: 'Crafting code to bring\n'),
                              const TextSpan(text: 'ideas to '),
                              TextSpan(
                                  text: 'life',
                                  style: TextStyle(color: AppColors.purple)),
                              const TextSpan(text: '...')
                            ]),
                      ),
                      // const Text(
                      //     'Because if the cover does not impress you what else can?'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I'm a Software Engineer & ",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1.2,
                        fontFamily: 'Preah',
                        fontSize: w / 28),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            height: 1.2,
                            fontFamily: 'Preah',
                            fontSize: w / 44,
                            fontWeight: FontWeight.bold),
                        children: const [
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
