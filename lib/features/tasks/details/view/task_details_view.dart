import 'package:day_task/core/utils/colors.dart';
import 'package:day_task/core/utils/extentions.dart';
import 'package:day_task/features/tasks/details/view/widgets/task_details_custom_bottom_nav.dart';
import 'package:day_task/features/tasks/details/view/widgets/task_details_view_body.dart';
import 'package:day_task/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TasksDetailsView extends StatelessWidget {
  const TasksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.scaffoldBackgroundColorColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => context.navigator.pop(),
          child: SvgPicture.asset(
            Assets.images.tasks.arrowleft,
            fit: BoxFit.scaleDown,
          ),
        ),
        title: const Text(
          'Task Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.38,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: SvgPicture.asset(Assets.images.tasks.editicon),
          )
        ],
      ),
      body: const TasksDetailsViewBody(),
      bottomNavigationBar: const TaskDetailsCustomBottomNav(),
    );
  }
}
