import 'package:day_task/constants.dart';
import 'package:flutter/material.dart';

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
              color: customYellowColor,
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
