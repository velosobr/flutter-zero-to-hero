import 'package:flutter/material.dart';
import 'package:ragnbills/modules/splash/splash_page.dart';
import 'package:ragnbills/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RagnBills',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: SplashPage(),
    );
  }
}
