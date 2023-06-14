import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(AppImages.selfImage),
                    ),
                  ),
                  // const SizedBox(height: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Preah',
                                fontSize: 24),
                            children: [
                              // const TextSpan(text: 'I am '),
                              TextSpan(
                                  text: 'Akshit Madan ',
                                  style: TextStyle(color: AppColors.purple))
                            ]),
                      ),
                      const SizedBox(height: 20),
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
                                height: 1.2,
                                fontFamily: 'Preah',
                                fontSize: 32,
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
