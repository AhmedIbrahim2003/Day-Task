import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/utils/colors.dart';
import 'features/splash/presentation/view/splash_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

//on generate routs

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColorColor),
      home: const SplashView(),
    );
  }
}