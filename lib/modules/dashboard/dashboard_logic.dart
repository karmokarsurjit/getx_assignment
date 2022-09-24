import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardLogic extends GetxController {
  late PageController pageController;
  var selectedIndex =0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController(initialPage: 0,
    keepPage: true);
    pageController.addListener(() {
      print(pageController.page);
      try {
        selectedIndex.value = pageController.page!.toInt();
      }
      catch(e){
        print(e);
      }
    });
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