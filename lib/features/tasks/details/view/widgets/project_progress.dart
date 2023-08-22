import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../core/utils/colors.dart';

class ProjectProgress extends StatelessWidget {
  const ProjectProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Project Progress',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.19,
          ),
        ),
        CircularPercentIndicator(
          radius: 29.0,
          lineWidth: 2.0,
          percent: 0.60,
          center: const Text(
            '60%',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 1.50,
            ),
          ),
          progressColor: CustomColors.primaryColor,
          reverse: true,
          backgroundColor: const Color(0xFF2B4652)
        )
      ],
    );
  }
}
