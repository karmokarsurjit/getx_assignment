import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/register/registerpages/register_mobile.dart';
import 'package:getx_assignment/modules/register/registerpages/register_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'register_logic.dart';

class RegisterPage extends GetView<RegisterLogic> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) =>
                RegisterPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) =>
                RegisterPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) =>
                RegisterPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) =>
                RegisterPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
