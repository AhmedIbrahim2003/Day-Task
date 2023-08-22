import 'package:day_task/features/tasks/details/view/widgets/project_task_item.dart';
import 'package:flutter/cupertino.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'All Tasks',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.19,
          ),
        ),
        SizedBox(height: 22),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) =>
              const ProjectTaskItem(isCompleted: true),
        )
      ],
    );
  }
}