// ignore_for_file: deprecated_member_use

import 'package:day_task/core/utils/colors.dart';
import 'package:day_task/core/utils/extentions.dart';
import 'package:day_task/core/widgets/app_logo.dart';
import 'package:day_task/core/widgets/my_custom_button.dart';
import 'package:day_task/gen/assets.gen.dart';
import 'package:day_task/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/widgets/continue_with_google.dart';
import '../../../../../../core/widgets/my_text_field_form.dart';
import '../../../../../home/presentaion/view/home_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<LoginCubit,LoginStates>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    var formKey = GlobalKey<FormState>();
    TextEditingController emailInputController = TextEditingController();
    TextEditingController passwordInputController = TextEditingController();
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
                  'Welcome Back!',
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
                  showPassword: false,
                  showPaswordIcon:
                      SvgPicture.asset(Assets.images.auth.showpassword1),
                  showPasswordfunction: () {
                    // LoginCubit.get(context).changeShowPasswordState();
                  },
                ),
                const SizedBox(height: 11),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF8CAAB8),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.18,
                    ),
                  ),
                ),
                const SizedBox(height: 38),
                MyCustomButton(
                  title: 'Log In',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context.navigator.push(
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
                    }
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
                      'Don\'t have an account?',
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
                            builder: (context) => const HomeView(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
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
    // },
    // );
  }
}
