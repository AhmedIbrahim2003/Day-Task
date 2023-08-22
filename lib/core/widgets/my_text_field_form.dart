import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/fonts.gen.dart';
import '../utils/colors.dart';

class MyInputTextForm extends StatelessWidget {
  const MyInputTextForm({
    super.key,
    required this.title,
    required this.inputHint,
    this.isPassword = false,
    this.showPassword = false,
    required this.controller,
    this.showPasswordfunction,
    this.showPaswordIcon,
    required this.icon,
  });

  final String title;
  final String inputHint;
  final String icon;
  final bool isPassword;
  final bool showPassword;
  final TextEditingController? controller;
  final VoidCallback? showPasswordfunction;
  final Widget? showPaswordIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: CustomColors.authSubTitleColor,
              fontSize: 16,
              fontFamily: FontFamily.inter,
              fontWeight: FontWeight.w400,
              height: 1.05,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            width: 376,
            height: 58,
            color: CustomColors.secoundaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: controller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '$title can\'t be empty';
                      } else if (isPassword) {
                        if (value.length < 6) {
                          return 'Password can\'t be than 6 characters';
                        } else {
                          return null;
                        }
                      } else {
                        return null;
                      }
                    },
                    cursorColor: Colors.white,
                    obscureText: isPassword ? !showPassword : false,
                    obscuringCharacter: '●',
                    style: const TextStyle(
                        fontSize: 20, fontFamily: FontFamily.inter),
                    decoration: InputDecoration(
                      icon: SvgPicture.asset(
                        icon,
                      ),
                      border: InputBorder.none,
                      focusColor: Colors.black,
                      hintText: inputHint,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: isPassword? 13:17,
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        height: 1.05,
                      ),
                      suffixIcon: isPassword
                          ? IconButton(
                              splashRadius: 1,
                              icon: showPaswordIcon!,
                              onPressed: showPasswordfunction!,
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
