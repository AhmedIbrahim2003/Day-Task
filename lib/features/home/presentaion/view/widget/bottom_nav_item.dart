// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/colors.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  final bool isSelected;
  final String icon;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: isSelected
                ? CustomColors.primaryColor
                : CustomColors.subTitleColor,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected
                  ? CustomColors.primaryColor
                  : CustomColors.subTitleColor,
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.65,
            ),
          ),
        ],
      ),
    );
  }
}
