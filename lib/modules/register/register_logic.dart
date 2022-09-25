import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class RegisterLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var nameFieldKey = GlobalKey<FormBuilderFieldState>();
  var emailFieldKey = GlobalKey<FormBuilderFieldState>();
  var phoneFieldKey = GlobalKey<FormBuilderFieldState>();
  var passFieldKey = GlobalKey<FormBuilderFieldState>();
  var confirmPassFieldKey = GlobalKey<FormBuilderFieldState>();

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
