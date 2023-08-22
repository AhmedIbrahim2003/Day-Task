// ignore_for_file: deprecated_member_use

import 'package:day_task/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';
import 'package:day_task/features/home/presentaion/view/widget/home_view_body.dart';
import 'package:day_task/features/home/presentaion/view/widget/my_custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar: MyBottomNav(),
    ),
    );
  }
}
