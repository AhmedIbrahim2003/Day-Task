import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../gen/assets.gen.dart';

class ProjectTaskItem extends StatelessWidget {
  const ProjectTaskItem({super.key, required this.isCompleted});

final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        width: 370,
        color: CustomColors.secoundaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'User Interviews',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.19,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                color: CustomColors.primaryColor,
                child: Center(
                  child: SvgPicture.asset(isCompleted?Assets.images.tasks.tickicon1:Assets.images.tasks.tickicon2),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}