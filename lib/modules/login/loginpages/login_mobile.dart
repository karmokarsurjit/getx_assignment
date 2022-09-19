import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_logic.dart';
import 'package:getx_assignment/routes/app_routes.dart';
import 'package:getx_assignment/shared/assets/images.dart';
import 'package:getx_assignment/widgets/buttons.dart';
import 'package:getx_assignment/widgets/text_fields.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/constants/colors.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center),
          const SizedBox(height: 80),
          TextFields.textFormField(texts: "Phone number or Code",inputType: TextInputType.phone,lrs: 20, uds: 10),
          TextFields.textFormField(texts: "Password",inputType: TextInputType.visiblePassword,hidden: true,lrs: 20, uds: 10),
          TextFields.texts(texts: "Forget password",colors: ConstantColors.TEXTYELLOW,align: TextAlign.end,abs: 10),
          Buttons.regularButton(texts: "Log in",routes: AppRoutes.REGISTER,fontWeight: FontWeight.w700,lrs: 20, uds: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Don't have account?"),
              Buttons.textButton(texts: "Open Now",color: ConstantColors.BUTTON,routes: AppRoutes.REGISTER),
            ],
          ),
          SizedBox(height: 100,),
          Container(
            alignment: Alignment.bottomRight,
              child: Images.info
          ),
        ],
      ),
    );
  }
}


class LoginPageMobileLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold();
  }
}