import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../register_logic.dart';

class RegisterPageTabletPortrait extends GetView<RegisterLogic> {

  final SizingInformation? sizingInformation;

  const RegisterPageTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Scaffold();
  }
}


class RegisterPageTabletLandscape extends GetView<RegisterLogic> {

  final SizingInformation? sizingInformation;

  const RegisterPageTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Scaffold();
  }
}