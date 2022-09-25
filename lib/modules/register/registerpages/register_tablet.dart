import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app_routes.dart';
import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';
import '../register_logic.dart';

class RegisterPageTabletPortrait extends GetView<RegisterLogic> {

  final SizingInformation? sizingInformation;

  const RegisterPageTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        children: [
          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center,),
          const SizedBox(height: 60),
          FormBuilder(key: controller.formKey,
            child: Column(children: [
              TextFields.formField(key: controller.nameFieldKey,name: 'name',label: "Your name",inputType: TextInputType.name,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Name is not given"),
                  ])),
              TextFields.formField(key: controller.emailFieldKey,name: 'email',label: "Email",inputType: TextInputType.emailAddress,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Email is empty"),
                    FormBuilderValidators.email(errorText: "Email is not valid")
                  ])),
              TextFields.formField(key: controller.phoneFieldKey,name: 'phone',label: "Phone Number",inputType: TextInputType.phone,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Phone number is required"),
                    FormBuilderValidators.equalLength(11,errorText: "Phone number is not correct")

                  ])),
              TextFields.formField(key: controller.passFieldKey,name: 'password',label: "Password",inputType: TextInputType.visiblePassword,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Password is not set"),
                    FormBuilderValidators.minLength(8,allowEmpty: false,errorText: "Password must be at least 8 characters")
                  ])),
              TextFields.formField(key: controller.confirmPassFieldKey,name: 'confirm_password',label: "Confirm Password",inputType: TextInputType.visiblePassword,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Confirm Password is not given"),
                  ])),
            ],
            ),
          ),
          Buttons.regularButton(texts: "Register",fontWeight: FontWeight.w700,uds: 5.0,lrs: 20.0,height: 40.0,btcolor: ConstantColors.BUTTON,onPressed: (){
            if(controller.formKey.currentState!.validate()){
              controller.formKey.currentState!.save();
              Get.toNamed(AppRoutes.LOGIN);
            }
          }),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Already have account?"),
              Buttons.textButton(texts: "Login Now",color: ConstantColors.BUTTON,routes: AppRoutes.LOGIN,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
              height: 180.0,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(10),
              child: Images.info
          ),

        ],
      ),
    );
  }
}


class RegisterPageTabletLandscape extends GetView<RegisterLogic> {

  final SizingInformation? sizingInformation;

  const RegisterPageTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        children: [
          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center,),
          const SizedBox(height: 60),
          FormBuilder(key: controller.formKey,
            child: Column(children: [
              TextFields.formField(key: controller.nameFieldKey,name: 'name',label: "Your name",inputType: TextInputType.name,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Name is not given"),
                  ])),
              TextFields.formField(key: controller.emailFieldKey,name: 'email',label: "Email",inputType: TextInputType.emailAddress,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Email is empty"),
                    FormBuilderValidators.email(errorText: "Email is not valid")
                  ])),
              TextFields.formField(key: controller.phoneFieldKey,name: 'phone',label: "Phone Number",inputType: TextInputType.phone,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Phone number is required"),
                    FormBuilderValidators.equalLength(11,errorText: "Phone number is not correct")

                  ])),
              TextFields.formField(key: controller.passFieldKey,name: 'password',label: "Password",inputType: TextInputType.visiblePassword,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Password is not set"),
                    FormBuilderValidators.minLength(8,allowEmpty: false,errorText: "Password must be at least 8 characters")
                  ])),
              TextFields.formField(key: controller.confirmPassFieldKey,name: 'confirm_password',label: "Confirm Password",inputType: TextInputType.visiblePassword,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Confirm Password is not given"),
                  ])),
            ],
            ),
          ),
          Buttons.regularButton(texts: "Register",fontWeight: FontWeight.w700,uds: 5.0,lrs: 20.0,height: 40.0,btcolor: ConstantColors.BUTTON,onPressed: (){
            if(controller.formKey.currentState!.validate()){
              controller.formKey.currentState!.save();
              Get.toNamed(AppRoutes.LOGIN);
            }
          }),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Already have account?"),
              Buttons.textButton(texts: "Login Now",color: ConstantColors.BUTTON,routes: AppRoutes.LOGIN,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
              height: 180.0,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(10),
              child: Images.info
          ),

        ],
      ),
    );
  }
}