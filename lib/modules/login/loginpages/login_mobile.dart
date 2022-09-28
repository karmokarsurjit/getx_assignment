import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_logic.dart';
import 'package:getx_assignment/routes/app_routes.dart';
import 'package:getx_assignment/shared/assets/images.dart';
import 'package:getx_assignment/widgets/buttons.dart';
import 'package:getx_assignment/widgets/text_fields.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/constants/colors.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        shrinkWrap: true,
        children: [

          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center),
          const SizedBox(height: 60.0),
          FormBuilder(key: controller.formKey,
              child: Column(
                children: [
                  TextFields.formField(key: controller.emailFieldKey,name: "phone",label: "Phone Number or Code",inputType: TextInputType.phone,uds: 5.0,lrs: 20.0,
                    validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Please enter your Phone Number or Code"),
                      FormBuilderValidators.equalLength(11,errorText: "Phone number or Code is not valid")
                  ]),),
                  TextFields.formField(key: controller.passFieldKey,name: "password",label: "Password",hidden: true,inputType: TextInputType.visiblePassword,uds: 5.0,lrs: 20.0,
                    validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Password is not given"),
                    FormBuilderValidators.minLength(8,allowEmpty: false,errorText: "Password must be at least 8 characters")
                  ]),),
                ],
              ), ),

          Buttons.textButton(texts: "Forget password",color: ConstantColors.BUTTON,align: Alignment.centerRight,fontWeight: FontWeight.w500),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Obx(
                      () => Checkbox(
                      checkColor: const Color(0xffF2C94C),
                      activeColor: const Color(0xffF2C94C),
                      shape: const CircleBorder(
                          side: BorderSide(color: Color(0xffF2C94C))),
                      value: controller.checkBool1.value,
                      onChanged: (value) {
                        controller.checkBool1.value =
                        !controller.checkBool1.value;
                        if (controller.checkBool2 != false.obs) {
                          controller.checkBool1.value =
                          !controller.checkBool1.value;
                        }
                      }),
                ),
                SvgPicture.asset(Images.box1),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Manager",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 35.0,
                ),
                Obx(
                      () => Checkbox(
                      autofocus: true,
                      focusColor: Colors.amberAccent,
                      checkColor: const Color(0xffF2C94C),
                      activeColor: const Color(0xffF2C94C),
                      shape: const CircleBorder(
                        side: BorderSide(
                            color: Color(0xffF2C94C)
                        ),
                      ),
                      value: controller.checkBool2.value,
                      onChanged: (value) {
                        controller.checkBool2.value =
                        !controller.checkBool2.value;
                        if (controller.checkBool1 != false.obs) {
                          controller.checkBool2.value =
                          !controller.checkBool2.value;
                        }
                      }),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(Images.box2),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Member",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Buttons.regularButton(texts: "Log in",fontWeight: FontWeight.w700,lrs: 20.0, uds: 10.0,height: 40.0,btcolor: ConstantColors.BUTTON,
              onPressed: (){
                if(controller.formKey.currentState!.validate()){
                  controller.formKey.currentState!.save();
                  Get.toNamed(AppRoutes.DASHBOARD);
                }
              }),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Don't have account?"),
              Buttons.textButton(texts: "Open Now",color: ConstantColors.BUTTON,routes: AppRoutes.REGISTER,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
            height: 200.0,
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(10.0),
            child: Images.info,
          ),

        ],
      ),
    );
  }
}


class LoginPageMobileLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: ConstantColors.LOGINBACKGROUND,
      body: ListView(
        shrinkWrap: true,
        children: [

          const SizedBox(height: 60.0),
          SvgPicture.asset(Images.logo),
          TextFields.texts(texts: "MessXp",colors: ConstantColors.TEXTYELLOW,align: TextAlign.center),
          const SizedBox(height: 60.0),
          FormBuilder(key: controller.formKey,
            child: Column(
              children: [
                TextFields.formField(key: controller.emailFieldKey,name: "phone",label: "Phone Number or Code",inputType: TextInputType.phone,uds: 5.0,lrs: 20.0,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Please enter your Phone Number or Code"),
                    FormBuilderValidators.equalLength(11,errorText: "Phone number or Code is not valid")
                  ]),),
                TextFields.formField(key: controller.passFieldKey,name: "password",label: "Password",hidden: true,inputType: TextInputType.visiblePassword,uds: 5.0,lrs: 20.0,validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: "Password is not given"),
                  FormBuilderValidators.minLength(8,allowEmpty: false,errorText: "Password must be at least 8 characters")
                ]),),
              ],
            ), ),

          Buttons.textButton(texts: "Forget password",color: ConstantColors.BUTTON,align: Alignment.centerRight,fontWeight: FontWeight.w500),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Obx(
                      () => Checkbox(
                      checkColor: const Color(0xffF2C94C),
                      activeColor: const Color(0xffF2C94C),
                      shape: const CircleBorder(
                          side: BorderSide(color: Color(0xffF2C94C))),
                      value: controller.checkBool1.value,
                      onChanged: (value) {
                        controller.checkBool1.value =
                        !controller.checkBool1.value;
                        if (controller.checkBool2 != false.obs) {
                          controller.checkBool1.value =
                          !controller.checkBool1.value;
                        }
                      }),
                ),
                SvgPicture.asset(Images.box1),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Manager",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 35.0,
                ),
                Obx(
                      () => Checkbox(
                      autofocus: true,
                      focusColor: Colors.amberAccent,
                      checkColor: const Color(0xffF2C94C),
                      activeColor: const Color(0xffF2C94C),
                      shape: const CircleBorder(
                        side: BorderSide(
                            color: Color(0xffF2C94C)
                        ),
                      ),
                      value: controller.checkBool2.value,
                      onChanged: (value) {
                        controller.checkBool2.value =
                        !controller.checkBool2.value;
                        if (controller.checkBool1 != false.obs) {
                          controller.checkBool2.value =
                          !controller.checkBool2.value;
                        }
                      }),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(Images.box2),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Member",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Buttons.regularButton(texts: "Log in",fontWeight: FontWeight.w700,lrs: 20.0, uds: 10.0,height: 40.0,btcolor: ConstantColors.BUTTON,
              onPressed: (){
                if(controller.formKey.currentState!.validate()){
                  controller.formKey.currentState!.save();
                  Get.toNamed(AppRoutes.DASHBOARD);
                }
              }),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields.texts(texts: "Don't have account?"),
              Buttons.textButton(texts: "Open Now",color: ConstantColors.BUTTON,routes: AppRoutes.REGISTER,fontWeight: FontWeight.w500),
            ],
          ),

          Container(
            height: 200.0,
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(10.0),
            child: Images.info,
          ),

        ],
      ),
    );
  }
}