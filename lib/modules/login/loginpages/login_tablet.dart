import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageTabletPortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Container();
  }
}


class LoginPageTabletLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Container();
  }
}
