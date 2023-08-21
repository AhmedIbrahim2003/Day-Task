import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class SplashText extends StatelessWidget {
  const SplashText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: 'Manage \nyour\nTask with\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'Pilat Extended',
              fontWeight: FontWeight.w600,
              height: 0.98,
            ),
          ),
          TextSpan(
            text: 'DayTask',
            style: TextStyle(
              color: CustomColors.customYellowColor,
              fontSize: 50,
              fontFamily: 'Pilat Extended',
              fontWeight: FontWeight.w600,
              height: 0.98,
            ),
          ),
        ],
      ),
    );
  }
}
