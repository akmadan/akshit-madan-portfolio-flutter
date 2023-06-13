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
                        '13,500+ YouTube \nSubscribers',
                        AppImages.bookmarkImage,
                        'Published over 350 Videos sharing my \nDevelopment Experiences and Technical Expertise. ',
                        'VISIT CHANNEL'),
                    highlightContainer(
                        '13,500+ YouTube \nSubscribers',
                        AppImages.bulbImage,
                        'Published over 350 Videos sharing my \nDevelopment Experiences and Technical Expertise. ',
                        'VISIT CHANNEL'),
                    highlightContainer(
                        '13,500+ YouTube \nSubscribers',
                        AppImages.cupImage,
                        'Published over 350 Videos sharing my \nDevelopment Experiences and Technical Expertise. ',
                        'VISIT CHANNEL'),
                    highlightContainer(
                        '13,500+ YouTube \nSubscribers',
                        AppImages.pickerImage,
                        'Published over 350 Videos sharing my \nDevelopment Experiences and Technical Expertise. ',
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

  Widget highlightContainer(String topic, imagePath, text, buttonText) {
    return Container(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: const TextStyle(
                    fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(text),
              const SizedBox(height: 10),
              AppOutlinedButton(
                title: buttonText,
                textStyle: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
