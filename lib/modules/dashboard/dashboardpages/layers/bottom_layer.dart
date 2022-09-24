import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../widgets/views.dart';
import '../../dashboard_logic.dart';

class BottomLayer {
  static bottomLayer({SizingInformation? sizingInformation, DashboardLogic? dashboardLogic}) {
    List<Tab> tabs = [
      Tab(text: "All",),
      Tab(text: "Feast Meal",),
      Tab(text: "Eid",),
      Tab(text: "Puja",),
    ];

    List<Widget> pages = [

      ListView(
        children: [
          Views.cardViews(dateName: "24 April 1997",titleString: "Monthly Feast on 24th April 1997",nameString:'Remind Me'),
          Views.cardViews(dateName: "24 April 1997",titleString: "Monthly Feast on 24th April 1997",nameString:'Remind Me'),
        ],
      ),
      ListView(
        children: [
          Views.cardViews(dateName: "1 December 1995",titleString: "Monthly Feast on 1st December 1995",nameString:'Remind Me'),
          Views.cardViews(dateName: "1 December 1995",titleString: "Monthly Feast on 1st December 1995",nameString:'Remind Me'),
        ],
      ),
      ListView(
        children: [
          Views.cardViews(dateName: "2 August 1996",titleString: "Monthly Feast on 2nd August 1996",nameString:'Remind Me'),
          Views.cardViews(dateName: "2 August 1996",titleString: "Monthly Feast on 2nd August 1996",nameString:'Remind Me'),
        ],
      ),
      ListView(
        children: [
          Views.cardViews(dateName: "10 July 1995",titleString: "Monthly Feast on 10th July 1995",nameString:'Remind Me'),
          Views.cardViews(dateName: "10 July 1995",titleString: "Monthly Feast on 10th July 1995",nameString:'Remind Me'),
        ],
      )
    ];
    return SizedBox(
      height: 350.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                return Obx(() {
                  return InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print(index);
                      }
                      dashboardLogic?.selectedIndex.value = index;
                      dashboardLogic?.pageController.animateToPage(index,
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 800));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          tabs[index],
                          Container(
                            height: 10.0,
                            width: 40.0,
                            color: dashboardLogic?.selectedIndex.value == index
                                ? Colors.yellow
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: dashboardLogic?.pageController,
              children: pages,
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Gossip",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'All 4 pie chart should have a common filter based on month, quarter.\nalso should have a print option\npie chart need to be enhanced.Full length court name, black color text.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const [
              SizedBox(
                width: 30.0,
              ),
              Icon(Icons.favorite),
              SizedBox(
                width: 30.0,
              ),
              Icon(Icons.messenger_outline),
              SizedBox(
                width: 30.0,
              ),
              Icon(Icons.share),
            ],
          ),
        ],
      ),
    );

  }
}
