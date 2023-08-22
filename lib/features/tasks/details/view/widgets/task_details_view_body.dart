import 'package:day_task/core/utils/colors.dart';
import 'package:day_task/features/home/presentaion/view/widget/avatar_row.dart';
import 'package:day_task/features/tasks/details/view/widgets/project_details.dart';
import 'package:day_task/features/tasks/details/view/widgets/project_progress.dart';
import 'package:day_task/features/tasks/details/view/widgets/task_info.dart';
import 'package:day_task/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TasksDetailsViewBody extends StatelessWidget {
  const TasksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            'Real Estate App Design',
            style: TextStyle(
              fontSize: 21,
              fontFamily: 'Pilat Extended',
              fontWeight: FontWeight.w600,
              height: 1.21,
            ),
          ),
          SizedBox(height: 27),
          TaskInfo(),
          SizedBox(height: 30),
          ProjectDetails(),
          ProjectProgress(),
        ],
      ),
    );
  }
}

