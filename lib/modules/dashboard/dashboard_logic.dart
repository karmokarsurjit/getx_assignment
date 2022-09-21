import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/shared/assets/images.dart';

class DashboardLogic extends GetxController {

  var selectedIndex = 0.obs;

  List<Widget> pageList = [

    ListView(
      children: [
        CardViewEvent.cardViewEvent(DateName: "24 April 1997",titleString: "Monthly Feast on 24th April 1997",NameString:'Remind Me'),
        CardViewEvent.cardViewEvent(DateName: "24 April 1997",titleString: "Monthly Feast on 24th April 1997",NameString:'Remind Me'),
      ],
    ),
    ListView(
      children: [
        CardViewEvent.cardViewEvent(DateName: "1 December 1995",titleString: "Monthly Feast on 1st December 1995",NameString:'Remind Me'),
        CardViewEvent.cardViewEvent(DateName: "1 December 1995",titleString: "Monthly Feast on 1st December 1995",NameString:'Remind Me'),
      ],
    ),
    ListView(
      children: [
        CardViewEvent.cardViewEvent(DateName: "2 August 1996",titleString: "Monthly Feast on 2nd August 1996",NameString:'Remind Me'),
        CardViewEvent.cardViewEvent(DateName: "2 August 1996",titleString: "Monthly Feast on 2nd August 1996",NameString:'Remind Me'),
      ],
    ),
    ListView(
      children: [
        CardViewEvent.cardViewEvent(DateName: "10 July 1995",titleString: "Monthly Feast on 10th July 1995",NameString:'Remind Me'),
        CardViewEvent.cardViewEvent(DateName: "10 July 1995",titleString: "Monthly Feast on 10th July 1995",NameString:'Remind Me'),
      ],
    )
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
class CardViewEvent{
  static cardViewEvent({DateName,titleString,NameString}){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.blue,
      child: ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          //padding: const EdgeInsets.all(5.0),
          child: SvgPicture.asset(Images.foods),
        ),
        title: Text(
          DateName,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.black38,
          ),
        ),
        subtitle: Text(
          titleString,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        trailing: SizedBox(
          width: 100,
          height: 30,
          child: Card(
            elevation: 10,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                NameString,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
