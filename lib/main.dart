import 'package:akshit_madan/core/config/environment.dart';
import 'package:akshit_madan/design/utils/app_theme.dart';
import 'package:akshit_madan/features/home/home_page.dart';
import 'package:akshit_madan/project/di/app_dependency_injection.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  Environment.initialize(flavour: Flavour.production);
  AppDependencyInjection.initDiServices();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      title: 'Akshit Madan👋 | Developer & Content Creator',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
