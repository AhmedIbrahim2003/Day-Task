import 'package:day_task/features/auth/presentation/login/view%20model/login%20cubit/login_cubit.dart';
import 'package:day_task/features/auth/presentation/login/view/widget/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
