import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var emailFieldKey = GlobalKey<FormBuilderFieldState>();
  var passFieldKey = GlobalKey<FormBuilderFieldState>();

  final checkBool1 = false.obs;
  final checkBool2 = false.obs;

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