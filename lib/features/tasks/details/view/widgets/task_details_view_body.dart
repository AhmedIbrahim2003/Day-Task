import 'package:day_task/features/tasks/details/view/widgets/project_details.dart';
import 'package:day_task/features/tasks/details/view/widgets/project_progress.dart';
import 'package:day_task/features/tasks/details/view/widgets/task_info.dart';
import 'package:flutter/material.dart';

import 'all_tasks.dart';

class TasksDetailsViewBody extends StatelessWidget {
  const TasksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
            SizedBox(height: 25),
            AllTasks(),
          ],
        ),
      ),
    );
  }
}


