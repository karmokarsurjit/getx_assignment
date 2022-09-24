import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/test/test_pages/testpage_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'test_logic.dart';

class TestPage extends GetView<TestLogic> {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TestLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(mobile:  OrientationLayoutBuilder(portrait: (context) => TestPageMobilePortrait(sizingInformation: sizingInformation),),);
    });

  }
}
