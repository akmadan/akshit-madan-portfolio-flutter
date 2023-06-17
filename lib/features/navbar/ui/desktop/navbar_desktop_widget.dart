import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarDesktopWidget extends StatelessWidget {
  const NavBarDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.maxFinite,
        color: AppColors.navBarColor,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style:
                      const TextStyle(fontFamily: 'Preah', color: Colors.white),
                  children: [
                    const TextSpan(text: 'Enrollments for '),
                    TextSpan(
                      text: 'Beginner to Advanced Flutter Hindi Course ',
                      style: TextStyle(
                          fontFamily: 'Preah', color: AppColors.purple),
                    ),
                    const TextSpan(text: 'are open! '),
                  ]),
            ),
            const SizedBox(width: 6),
            AppOutlinedButton(
              title: 'Enroll Here',
              onTap: () {
                launchUrl(Uri.parse(
                    'https://akshitmadan9134.graphy.com/courses/Learn-to-make-apps-in-Flutter-6443deb6e4b01162ff92ed9d'));
              },
            )
          ],
        )
            // RichText(

            ));
  }
}
