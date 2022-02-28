import 'package:flutter/material.dart';
import 'package:flutter_payflow/shared/themes/app_colors.dart';
import 'package:flutter_payflow/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Image.asset(AppImages.union),
          Image.asset(AppImages.logoFull),
        ],
      ),
    );
  }
}