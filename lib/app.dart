import 'package:day_task/features/home/presentaion/view/home_view.dart';
import 'package:flutter/material.dart';

import 'core/utils/colors.dart';

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
      home: const HomeView(),
    );
  }
}