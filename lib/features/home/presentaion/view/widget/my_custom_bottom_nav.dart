import 'package:day_task/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';
import 'package:day_task/features/home/presentaion/view/widget/bottom_nav_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../gen/assets.gen.dart';
import '../../view model/home cubit/home_states.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Container(
          width: MediaQuery.sizeOf(context).width,
          height: 87,
          color: CustomColors.tertiaryColor,
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  left: 25,
                  bottom: 20,
                  child: BottomNavItem(
                    icon: Assets.images.home.homeicon,
                    title: 'Home',
                    isSelected: cubit.currentPageIndex == 0,
                    onTap: () {
                      cubit.changePage(0);
                    },
                  ),
                ),
                Positioned(
                  left: 98,
                  bottom: 20,
                  child: BottomNavItem(
                    icon: Assets.images.home.messagesicon,
                    title: 'Chat',
                    isSelected: HomeCubit.get(context).currentPageIndex == 1,
                    onTap: () {
                      cubit.changePage(1);
                    },
                  ),
                ),
                Center(
                  child: Container(
                    width: 54,
                    height: 54,
                    color: CustomColors.primaryColor,
                    child: SvgPicture.asset(
                      Assets.images.home.addicon,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Positioned(
                  right: 95,
                  bottom: 20,
                  child: BottomNavItem(
                    icon: Assets.images.home.calendaricon,
                    title: 'Calender',
                    isSelected: HomeCubit.get(context).currentPageIndex == 3,
                    onTap: () {
                      cubit.changePage(3);
                    },
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 20,
                  child: BottomNavItem(
                    icon: Assets.images.home.notificationicon,
                    title: 'Notification',
                    isSelected: HomeCubit.get(context).currentPageIndex == 4,
                    onTap: () {
                      cubit.changePage(4);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
