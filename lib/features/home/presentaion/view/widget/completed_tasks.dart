
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'completed_task_item.dart';

class CompletedTasks extends StatelessWidget {
  const CompletedTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Completed Tasks',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.38,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: CustomColors.primaryColor,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.72,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 175,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => CompletedTasksItem(index: index),
            itemCount: 6,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}