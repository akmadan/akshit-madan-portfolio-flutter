import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';

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
            "I'm currently looking to join a cross-functional team that values improving people's lives \nthrough accessible design. or have a project in mind? Let's connect."),
        const SizedBox(height: 20),
        Text(
          'akmadan1717@gmail.com',
          style: TextStyle(color: AppColors.purple),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail,
                  color: Colors.white,
                ))
          ],
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
