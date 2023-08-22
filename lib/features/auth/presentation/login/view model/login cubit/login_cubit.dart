// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../gen/assets.gen.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool showpassword = false;
  Widget showPasswordIcon = SvgPicture.asset(Assets.images.auth.showpassword1);

  void changeShowPasswordState() {
    showpassword = !showpassword;
    showpassword
        ? showPasswordIcon = SvgPicture.asset(Assets.images.auth.showpassword2)
        : showPasswordIcon = SvgPicture.asset(Assets.images.auth.showpassword1,
            color: CustomColors.authSubTitleColor);
    emit(LoginShowPasswordState());
  }

  Widget agreeBox = SvgPicture.asset(Assets.images.auth.agreebox1);
  bool isagreedToTerm = false;
  void agreeToTerms() {
    isagreedToTerm = !isagreedToTerm;
    isagreedToTerm
        ? agreeBox = SvgPicture.asset(Assets.images.auth.agreebox2)
        : agreeBox = SvgPicture.asset(Assets.images.auth.agreebox1,
            color: CustomColors.authSubTitleColor);
    emit(LoginAgreeToTermsState());
  }
}
