import 'package:arch/app/controllers/app_controller.dart';
import 'package:arch/app/pages/home/home_page.dart';
import 'package:arch/app/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              brightness: isDark ? Brightness.dark : Brightness.light),
          home: HomePage(),
        );
      },
    );
  }
}
