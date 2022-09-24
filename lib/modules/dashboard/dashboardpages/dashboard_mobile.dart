import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/dashboard/dashboard_logic.dart';
import 'package:getx_assignment/modules/dashboard/dashboardpages/layers/mid_layer.dart';
import 'package:getx_assignment/modules/dashboard/dashboardpages/layers/top_layer.dart';
import 'package:getx_assignment/shared/constants/colors.dart';
import 'package:getx_assignment/shared/constants/font_sizes.dart';
import 'package:getx_assignment/widgets/text_fields.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'layers/bottom_layer.dart';

class DashboardPageMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const DashboardPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold(
        appBar: AppBar(
          title: TextFields.texts(texts: "Dashboard", colors: ConstantColors.TEXTGREY, textSize: FontSizes.SMALL),
          backgroundColor: ConstantColors.YELLOW,
          centerTitle: true,
        ),

        body: ListView(
          children: [
            TopLayer.topLayer(sizingInformation: sizingInformation),
            MidLayer.midLayer(sizingInformation: sizingInformation),
            BottomLayer.bottomLayer(sizingInformation: sizingInformation,dashboardLogic: controller),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ConstantColors.GREY,
            iconSize: 1.0,
            items: const [
              BottomNavigationBarItem(label: "MEMBERS", icon: Icon(null),),
              BottomNavigationBarItem(label: "BAZAR LIST", icon: Icon(null),),
              BottomNavigationBarItem(label: "#MEAL", icon: Icon(null),),
        ]),
      //),
    );
  }
}

class DashboardPageMobileLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const DashboardPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold();
  }
}