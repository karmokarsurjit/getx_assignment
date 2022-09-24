import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/test/test_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TestPageMobilePortrait extends GetView<TestLogic> {
  final SizingInformation? sizingInformation;

    const TestPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TestLogic>();
    return Scaffold(
      appBar: AppBar(
        title: Text("FormViewBuilder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormBuilder(
            key: controller.formKey,
            child:  Column(
              children: [
                FormBuilderTextField(
                  key: controller.emailFieldKey,
                  name: 'email',
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "ERROR!"),
                  ]),
                ),
                FormBuilderTextField(
                  key: controller.passFieldKey,
                  name: 'password',
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "ERROR!"),
                  ]),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Text('Submit'),
            onPressed: () async {
              if(controller.formKey.currentState!.validate()){
                controller.formKey.currentState!.save();
                print(controller.formKey.currentState!.value["email"]);
                print(controller.formKey.currentState!.value["password"]);
              }
            },
          ),
        ],
      ),
    );
  }
}
