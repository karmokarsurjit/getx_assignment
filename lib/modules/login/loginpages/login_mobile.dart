import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: Color(0xff32302C),
      body: SvgPicture.asset("assets/images/loigin.svg"),
    );
  }
}


class LoginPageMobileLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Container();
  }
}