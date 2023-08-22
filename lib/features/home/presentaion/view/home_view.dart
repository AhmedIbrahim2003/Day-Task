// ignore_for_file: deprecated_member_use

import 'package:day_task/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';
import 'package:day_task/features/home/presentaion/view/widget/home_view_body.dart';
import 'package:day_task/features/home/presentaion/view/widget/my_custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

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
