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
      body: ListView(
        children: [
          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center,),
          const SizedBox(height: 60),
          TextFields.textFormField(texts: "Your Name",inputType: TextInputType.name,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Email",inputType: TextInputType.emailAddress,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Phone Number",inputType: TextInputType.phone,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Password",inputType: TextInputType.visiblePassword,hidden: true,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Confirm Password",inputType: TextInputType.visiblePassword,hidden: true,uds: 5.0,lrs: 20.0),
          Buttons.regularButton(texts: "Register",routes: AppRoutes.TESTPAGE,fontWeight: FontWeight.w700,uds: 5.0,lrs: 20.0,height: 40.0,btcolor: ConstantColors.BUTTON),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Already have account?"),
              Buttons.textButton(texts: "Login Now",color: ConstantColors.BUTTON,routes: AppRoutes.LOGIN,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
            height: 180.0,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(10),
              child: Images.info
          ),

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
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        children: [
          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center,),
          const SizedBox(height: 60),
          TextFields.textFormField(texts: "Your Name",inputType: TextInputType.name,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Email",inputType: TextInputType.emailAddress,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Phone Number",inputType: TextInputType.phone,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Password",inputType: TextInputType.visiblePassword,hidden: true,uds: 5.0,lrs: 20.0),
          TextFields.textFormField(texts: "Confirm Password",inputType: TextInputType.visiblePassword,hidden: true,uds: 5.0,lrs: 20.0),
          Buttons.regularButton(texts: "Register",routes: AppRoutes.DASHBOARD,fontWeight: FontWeight.w700,uds: 5.0,lrs: 20.0,height: 40.0,btcolor: ConstantColors.BUTTON),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Already have account?"),
              Buttons.textButton(texts: "Login Now",color: ConstantColors.BUTTON,routes: AppRoutes.LOGIN,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
              height: 180.0,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(10),
              child: Images.info
          ),

        ],
      ),
    );
  }
}