import 'package:flutter/material.dart';
import 'package:getx_assignment/shared/constants/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../dashboard_logic.dart';

class ThirdLayer {
  static thirdLayer({SizingInformation? sizingInformation,DashboardLogic? dashboardLogic}) {

    List<Text> pages = [
      Text("Page 1"),
      Text("Page 2")
    ];
    List<Tab> tabs = [
      Tab(text: "Tab 1",),
      Tab(text: "Tab 2",)
    ];
    
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabBar(tabs: tabs,labelColor: ConstantColors.TEXTBLACK,),
          TabBarView(
             viewportFraction: double.maxFinite,
              children: pages,
          ),
        ],
      ),
    );
      
  }


}