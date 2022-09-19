import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/shared/constants/colors.dart';
import 'package:getx_assignment/widgets/text_fields.dart';

class Buttons {
  static regularButton({routes,texts,fontWeight,uds=0.0,lrs=0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs,vertical: uds),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(routes);
          },
          child: TextFields.texts(texts: texts,fontWeight: fontWeight),
          style: ElevatedButton.styleFrom(
            backgroundColor: ConstantColors.BUTTON,
          ),
        ),
      ),
    );
  }

  static textButton({routes, texts, color}) {
    return TextButton(
      onPressed: () {
        Get.toNamed(routes);
      },
      child: TextFields.texts(texts: texts,colors: color),
    );
  }
}
