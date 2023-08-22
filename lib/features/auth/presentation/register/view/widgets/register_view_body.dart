// ignore_for_file: deprecated_member_use

import 'package:day_task/core/utils/colors.dart';
import 'package:day_task/core/utils/extentions.dart';
import 'package:day_task/core/widgets/app_logo.dart';
import 'package:day_task/core/widgets/my_custom_button.dart';
import 'package:day_task/features/auth/presentation/register/view%20model/register%20cubit/register_cubit.dart';
import 'package:day_task/features/auth/presentation/register/view/widgets/agree_to_terms.dart';
import 'package:day_task/gen/assets.gen.dart';
import 'package:day_task/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/continue_with_google.dart';
import '../../../../../../core/widgets/my_text_field_form.dart';
import '../../../login/view/login_view.dart';
import '../../view model/register cubit/register_states.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController nameInputController = TextEditingController();
    TextEditingController emailInputController = TextEditingController();
    TextEditingController passwordInputController = TextEditingController();
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                      child: AppLogo(
                        width: 91.22,
                        height: 71.38,
                        fontSize: 24.30,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Create your account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w600,
                        height: 0.59,
                      ),
                    ),
                    const SizedBox(height: 23),
                    MyInputTextForm(
                      title: 'Full Name',
                      inputHint: 'Fazil Laghari',
                      controller: nameInputController,
                      icon: Assets.images.auth.fullnamesuffixicon,
                    ),
                    const SizedBox(height: 27),
                    MyInputTextForm(
                      title: 'Email Address',
                      inputHint: 'fazzzil72@gmail.com',
                      controller: emailInputController,
                      icon: Assets.images.auth.emailsuffixicon,
                    ),
                    const SizedBox(height: 27),
                    MyInputTextForm(
                      title: 'Password',
                      inputHint: '● ' * 8,
                      icon: Assets.images.auth.passwordsuffixicon,
                      controller: passwordInputController,
                      isPassword: true,
                      showPassword: RegisterCubit.get(context).showpassword,
                      showPaswordIcon:
                          RegisterCubit.get(context).showPasswordIcon,
                      showPasswordfunction: () {
                        RegisterCubit.get(context).changeShowPasswordState();
                      },
                    ),
                    const SizedBox(height: 17),
                    AgreeToTermsAndCondition(
                      agreeFunction: () {
                        RegisterCubit.get(context).agreeToTerms();
                      },
                      agreeBoxIcon: RegisterCubit.get(context).agreeBox,
                    ),
                    const SizedBox(height: 33),
                    MyCustomButton(
                      title: 'Sign Up',
                      onTap: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                    const SizedBox(height: 33),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 95,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: CustomColors.authSubTitleColor,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Or continue with',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.authSubTitleColor,
                            fontSize: 16,
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.w500,
                            height: 1.18,
                          ),
                        ),
                        Container(
                          width: 95,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: CustomColors.authSubTitleColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 37),
                    ContinueWithGoogle(
                      onTap: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: CustomColors.authSubTitleColor,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.navigator.push(
                              MaterialPageRoute(
                                builder: (context) => const LoginView(),
                              ),
                            );
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: CustomColors.primaryColor,
                              fontSize: 16,
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.w600,
                              height: 1.18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
