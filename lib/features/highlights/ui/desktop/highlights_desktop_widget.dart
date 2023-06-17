import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/app_image_widget.dart';
import 'package:akshit_madan/design/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/material.dart';

class HighlightsDesktopWidget extends StatelessWidget {
  const HighlightsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height - 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  spreadRadius: 200,
                  color: AppColors.purple.withOpacity(0.4),
                )
              ]),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Highlights',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  direction: Axis.horizontal,
                  children: [
                    highlightContainer(
                        context,
                        false,
                        '14,000+ YouTube Subscribers',
                        AppImages.bookmarkImage,
                        'Published over 350 Videos sharing my Development Experiences and Technical Expertise. ',
                        'VISIT CHANNEL'),
                    highlightContainer(
                        context,
                        false,
                        'Ex-Intern @Tickertape',
                        AppImages.bulbImage,
                        'Worked at Indian Fintech Startup Tickertape as a Mobile Development Engineer',
                        'VISIT CHANNEL'),
                    highlightContainer(
                        context,
                        false,
                        'SDE @Stealth Startup',
                        AppImages.cupImage,
                        'I am currently employed as an SDE at a HealthTech Accelerator Startup based in a beautiful city, Pune.',
                        'VISIT CHANNEL'),
                    highlightContainer(
                        context,
                        false,
                        'ML Researcher',
                        AppImages.pickerImage,
                        "With a passion for pushing AI's boundaries, I continually delve into the latest research and developments in the field.",
                        'VISIT CHANNEL'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget highlightContainer(BuildContext context, bool showButton, String topic,
      imagePath, text, buttonText) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w / 2.4,
      height: 260,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageWidget(
            imageWidth: 100,
            imageHeight: 100,
            path: imagePath,
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                      fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  // style: TextStyle(fontSize: w / 80),
                ),
                const SizedBox(height: 10),
                if (showButton)
                  AppOutlinedButton(
                    title: buttonText,
                    textStyle: const TextStyle(fontSize: 12),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
