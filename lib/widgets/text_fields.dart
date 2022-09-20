import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:getx_assignment/shared/constants/font_sizes.dart';
import 'package:get/get.dart';

import '../shared/constants/colors.dart';

class TextFields {
  static textFormField({texts,TextInputType? inputType,hidden=false,uds=0.0,lrs=0.0,validation}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs, vertical: uds),
      child: TextFormField(
        style: const TextStyle(color: ConstantColors.TEXTWHITE),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstantColors.FIELDOUTLINE),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstantColors.FIELDOUTLINE),
          ),
          labelText: texts,
          labelStyle: const TextStyle(color: ConstantColors.TEXTWHITE)
        ),
        keyboardType: inputType,
        obscureText: hidden,
        validator: validation,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  static texts({texts,colors=ConstantColors.TEXTBLACK,textSize=FontSizes.REGULAR,fontWeight=FontWeight.w400,TextAlign? align,uds=0.0,lrs=0.0}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs,vertical: uds),
      child: Text(texts,style: TextStyle(color: colors,fontSize: textSize,fontWeight: fontWeight),textAlign: align,),
    );
  }

}
