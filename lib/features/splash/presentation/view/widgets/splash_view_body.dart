import 'package:day_task/constants.dart';
import 'package:day_task/core/utils/assets.dart';
import 'package:day_task/features/auth/presentation/register/view/register_view.dart';
import 'package:day_task/features/splash/presentation/view/widgets/splash_image.dart';
import 'package:day_task/features/splash/presentation/view/widgets/splash_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widgets/my_custom_button.dart';
import 'app_logo.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogo(),
            const SizedBox(height: 33),
            const SplashImage(),
            const SizedBox(height: 45),
            const SplashText(),
            const SizedBox(height: 24),
            MyCustomButton(
              title: 'Let\'s Start',
              onTap: () {
                myPushReplacmentNavigator(
                  context: context,
                  destination: const RegisterView(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
