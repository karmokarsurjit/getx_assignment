import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/loginpages/login_mobile.dart';
import 'package:getx_assignment/modules/login/loginpages/login_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'login_logic.dart';

class LoginPage extends GetView<LoginLogic> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) =>
                LoginPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) =>
                LoginPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) =>
                LoginPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) =>
                LoginPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
