import 'package:day_task/features/auth/presentation/register/view%20model/register%20cubit/register_cubit.dart';
import 'package:day_task/features/auth/presentation/register/view/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: const Scaffold(
        body: RegisterViewBody(),
      ),
    );
  }
}
