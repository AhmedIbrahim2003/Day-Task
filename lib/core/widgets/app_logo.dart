import 'package:day_task/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.height,
    this.width,
    this.fontSize,
  });

  final double? height;
  final double? width;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: SvgPicture.asset(
            Assets.images.applogo,
            fit: BoxFit.contain,
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize ?? 16.26,
                  fontFamily: FontFamily.pilatExtended,
                  fontWeight: FontWeight.w600,
                  height: 0.94,
                ),
              ),
              TextSpan(
                text: 'Task',
                style: TextStyle(
                  color: const Color(0xFFFED36A),
                  fontSize: fontSize ?? 16.26,
                  fontFamily: FontFamily.pilatExtended,
                  fontWeight: FontWeight.w600,
                  height: 0.94,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
