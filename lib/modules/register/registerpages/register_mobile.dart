import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app_routes.dart';
import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';
import '../register_logic.dart';

class RegisterPageMobilePortrait extends GetView<RegisterLogic> {

  final SizingInformation? sizingInformation;

  const RegisterPageMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SvgPicture.asset(Images.logo),

          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center),

          const SizedBox(height: 80),

          TextFields.textFormField(texts: "Your Name",inputType: TextInputType.name),

          TextFields.textFormField(texts: "Email",inputType: TextInputType.emailAddress),

          TextFields.textFormField(texts: "Phone Number",inputType: TextInputType.phone),

          TextFields.textFormField(texts: "Password",inputType: TextInputType.visiblePassword,hidden: true),

          TextFields.textFormField(texts: "Confirm Password",inputType: TextInputType.visiblePassword,hidden: true),

          TextFields.texts(texts: "forget password",colors: ConstantColors.TEXTYELLOW,align: TextAlign.end,abs: 10,fontWeight: FontWeight.w300),

          Buttons.regularButton(texts: "Log in",routes: AppRoutes.LOGIN),


        ],
      ),
    );
  }
}


class RegisterPageMobileLandscape extends GetView<RegisterLogic> {

  final SizingInformation? sizingInformation;

  const RegisterPageMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return const Scaffold();
  }
}