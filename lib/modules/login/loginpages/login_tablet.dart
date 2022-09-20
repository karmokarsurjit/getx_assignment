import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app_routes.dart';
import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';

class LoginPageTabletPortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        shrinkWrap: true,
        children: [

          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center),
          const SizedBox(height: 60.0),
          TextFields.textFormField(texts: "Phone number or Code",inputType: TextInputType.phone,lrs: 20.0, uds: 5.0),
          TextFields.textFormField(texts: "Password",inputType: TextInputType.visiblePassword,hidden: true,lrs: 20.0, uds: 5.0),
          Buttons.textButton(texts: "Forget password",color: ConstantColors.BUTTON,align: Alignment.centerRight,fontWeight: FontWeight.w500),
          Buttons.regularButton(texts: "Log in",routes: AppRoutes.DASHBOARD,fontWeight: FontWeight.w700,lrs: 20.0, uds: 10.0,height: 40.0,btcolor: ConstantColors.BUTTON),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Don't have account?"),
              Buttons.textButton(texts: "Open Now",color: ConstantColors.BUTTON,routes: AppRoutes.REGISTER,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
            height: 200.0,
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(10.0),
            child: Images.info,
          ),

        ],
      ),
    );
  }
}


class LoginPageTabletLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        shrinkWrap: true,
        children: [

          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center),
          const SizedBox(height: 60.0),
          TextFields.textFormField(texts: "Phone number or Code",inputType: TextInputType.phone,lrs: 20.0, uds: 5.0),
          TextFields.textFormField(texts: "Password",inputType: TextInputType.visiblePassword,hidden: true,lrs: 20.0, uds: 5.0),
          Buttons.textButton(texts: "Forget password",color: ConstantColors.BUTTON,align: Alignment.centerRight,fontWeight: FontWeight.w500),
          Buttons.regularButton(texts: "Log in",routes: AppRoutes.DASHBOARD,fontWeight: FontWeight.w700,lrs: 20.0, uds: 10.0,height: 40.0,btcolor: ConstantColors.BUTTON),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Don't have account?"),
              Buttons.textButton(texts: "Open Now",color: ConstantColors.BUTTON,routes: AppRoutes.REGISTER,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
            height: 200.0,
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(10.0),
            child: Images.info,
          ),

        ],
      ),
    );
  }
}
