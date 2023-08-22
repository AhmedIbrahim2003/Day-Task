// ignore_for_file: deprecated_member_use

import 'package:day_task/core/utils/colors.dart';
import 'package:day_task/features/auth/presentation/register/view%20model/register%20cubit/register_states.dart';
import 'package:day_task/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  bool showpassword = false;
  Widget showPasswordIcon = SvgPicture.asset(Assets.images.auth.showpassword1);

  void changeShowPasswordState() {
    showpassword = !showpassword;
    showpassword
        ? showPasswordIcon = SvgPicture.asset(Assets.images.auth.showpassword2)
        : showPasswordIcon = SvgPicture.asset(Assets.images.auth.showpassword1,color: CustomColors.subTitleColor);
    emit(RegisterShowPasswordState());
  }

  Widget agreeBox = SvgPicture.asset(Assets.images.auth.agreebox1);
  bool isagreedToTerm = false;
  void agreeToTerms() {
    isagreedToTerm = !isagreedToTerm;
    isagreedToTerm
        ? agreeBox = SvgPicture.asset(Assets.images.auth.agreebox2)
        : agreeBox = SvgPicture.asset(Assets.images.auth.agreebox1,color: CustomColors.subTitleColor);
    emit(RegisterAgreeToTermsState());
  }
}
