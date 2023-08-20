import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          SvgPicture.asset(AssetsData.appLogo),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.26,
                    fontFamily: 'Pilat Extended',
                    fontWeight: FontWeight.w600,
                    height: 0.94,
                  ),
                ),
                TextSpan(
                  text: 'Task',
                  style: TextStyle(
                    color: Color(0xFFFED36A),
                    fontSize: 16.26,
                    fontFamily: 'Pilat Extended',
                    fontWeight: FontWeight.w600,
                    height: 0.94,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
