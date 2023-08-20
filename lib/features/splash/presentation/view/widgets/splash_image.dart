import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 339,
      height: 300,
      color: Colors.white,
      child: Image.asset(
        AssetsData.onBoardingImage,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}