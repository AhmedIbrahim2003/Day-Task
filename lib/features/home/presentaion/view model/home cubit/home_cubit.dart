import 'package:day_task/features/calendar/view/calender_view.dart';
import 'package:day_task/features/chat/view/chat_view.dart';
import 'package:day_task/features/home/presentaion/view/widget/home_view_body.dart';
import 'package:day_task/features/notification/view/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  int currentPageIndex = 0;
  
  List<Widget> pages = [
    const HomeViewBody(),
    const ChatViewBody(),
    const CalenderViewBody(),
    const NotificationViewBody(),
  ];
  void changePage(int newIndex){
    currentPageIndex = newIndex;
    emit(HomePageIndexChanged());
  }
}