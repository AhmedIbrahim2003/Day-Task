import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 265,
                height: 58,
                color: CustomColors.secoundaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            fontSize: 16, fontFamily: FontFamily.inter),
                        decoration: InputDecoration(
                          icon: SvgPicture.asset(
                            Assets.images.home.searchicon,
                          ),
                          border: InputBorder.none,
                          focusColor: Colors.black,
                          hintText: 'Seach tasks',
                          hintStyle: TextStyle(
                            color: HexColor('#6F8793'),
                            fontSize: 16,
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.w400,
                            height: 1.05,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 57,
            height: 58,
            color: CustomColors.primaryColor,
            child: Center(
              child: SvgPicture.asset(Assets.images.home.settingicon),
            ),
          )
        ],
      ),
    );
  }
}