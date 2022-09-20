import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dashboard_logic.dart';
import 'dashboardpages/dashboard_mobile.dart';
import 'dashboardpages/dashboard_tablet.dart';

class DashboardPage extends GetView<DashboardLogic> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) =>
                DashboardPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) =>
                DashboardPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) =>
                DashboardPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) =>
                DashboardPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );

  }
}
