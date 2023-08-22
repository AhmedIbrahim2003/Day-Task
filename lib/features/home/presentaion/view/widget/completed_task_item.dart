import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'avatar_row.dart';
import 'completed_task_progress_bar.dart';

class CompletedTasksItem extends StatelessWidget {
  const CompletedTasksItem({
    super.key,
    this.index = 1,
  });

  final int? index;

  @override
  Widget build(BuildContext context) {
    var mainColor =
        index == 0 ? CustomColors.primaryColor : CustomColors.secoundaryColor;
    var textColor = index == 0 ? Colors.black : Colors.white;

    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Container(
        width: 183,
        height: 175,
        color: mainColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'Real Estate \nWebsite \nDesign',
                style: TextStyle(
                  color: textColor,
                  fontSize: 21,
                  fontFamily: 'Pilat Extended',
                  fontWeight: FontWeight.w600,
                  height: 1.21,
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Team members',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  const AvatarsRow(),
                ],
              ),
              const SizedBox(height: 13),
              CompletedTaskProgressBar(fontColor: textColor)
            ],
          ),
        ),
      ),
    );
  }
}
