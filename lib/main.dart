import 'package:day_task/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(scaffoldBackgroundColor: scaffoldBackgroundColorColor),
      home: SplashView()
    );
  }
}
