import 'package:day_task/core/utils/colors.dart';
import 'package:day_task/core/utils/extentions.dart';
import 'package:day_task/features/home/presentaion/view/widget/my_search_bar.dart';
import 'package:day_task/features/tasks/details/view/task_details_view.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'avatar_row.dart';
import 'completed_tasks.dart';
import 'my_custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCustomAppBar(),
                SizedBox(height: 31),
                MySearchBar(),
                SizedBox(height: 30),
                CompletedTasks(),
                SizedBox(height: 30),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: OngoindTasks(),
          )
        ],
      ),
    ));
  }
}

class OngoindTasks extends StatelessWidget {
  const OngoindTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Ongoing Projects',
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
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => const OngoingTaskItem(),
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
          )
        ],
      ),
    );
  }
}

class OngoingTaskItem extends StatelessWidget {
  const OngoingTaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.navigator.push(
        MaterialPageRoute(builder: (context) => const TasksDetailsView()),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          width: 384,
          color: CustomColors.secoundaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mobile App Wireframe',
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Pilat Extended',
                    fontWeight: FontWeight.w600,
                    height: 1.21,
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Team members',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.18,
                          ),
                        ),
                        SizedBox(height: 6),
                        AvatarsRow(),
                        SizedBox(height: 13),
                        Text(
                          'Due on : 21 March',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.18,
                          ),
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 29,
                      lineWidth: 1,
                      percent: 0.75,
                      center: const Text('75%'),
                      progressColor: CustomColors.primaryColor,
                      backgroundColor: CustomColors.tertiaryColor,
                      reverse: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
