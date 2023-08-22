import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 376,
        height: 67,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.white),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.images.auth.googleicon),
              const SizedBox(width: 12),
              const Text(
                'Google',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: FontFamily.inter,
                  fontWeight: FontWeight.w500,
                  height: 1.33,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
