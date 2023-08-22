import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class TaskDetailsCustomBottomNav extends StatelessWidget {
  const TaskDetailsCustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 100,
      child: GestureDetector(
        onTap: () {
          //todo: navigate to add task
        },
        child: Center(
          child: Container(
            width: 318,
            height: 57,
            color: CustomColors.primaryColor,
            child: const Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}