import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/routes/app_routes.dart';

class LoginLogic extends GetxController {

  final formKey = GlobalKey<FormState>();
  final checkBool1 = false.obs;
  final checkBool2 = false.obs;

  static var isLoadingLoggingIn = false.obs;

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

  void singIn(){

    if(isLoadingLoggingIn.value != true){
      Get.offNamed(AppRoutes.DASHBOARD);
    }
    else{
      isLoadingLoggingIn.value = false;
    }
  }

}