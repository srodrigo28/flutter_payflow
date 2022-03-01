import 'package:flutter/material.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(   
        primaryColor: AppColors.primary,
      ),
      // home: const SplashPage(),
      home: const LoginPage(),
    );
  }
}