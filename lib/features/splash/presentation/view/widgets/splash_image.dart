import 'package:day_task/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 339,
      height: 300,
      color: Colors.white,
      child: Image(
        image: Assets.images.splash.splashimage.provider(),
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
