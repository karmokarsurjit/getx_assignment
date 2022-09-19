import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_logic.dart';
import 'package:getx_assignment/widgets/buttons.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/text_fields.dart';

class LoginPageTabletPortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold();
  }
}


class LoginPageTabletLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold();
  }
}
