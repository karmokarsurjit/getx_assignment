import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getx_assignment/shared/constants/font_sizes.dart';

import '../shared/constants/colors.dart';

class TextFields {

  static formField({key,validator,name,label,inputType,hidden=false,lrs=0.0,uds=0.0,}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs, vertical: uds),
      child: FormBuilderTextField(
        key: key,
        name: name,
        style: const TextStyle(color: ConstantColors.TEXTWHITE),
        decoration: InputDecoration(
            labelText: label,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: ConstantColors.FIELDOUTLINE),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: ConstantColors.FIELDOUTLINE),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ConstantColors.FIELDOUTLINE),
            ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstantColors.FIELDOUTLINE),
          ),
            labelStyle: const TextStyle(color: ConstantColors.TEXTWHITE),
        ),
        validator: validator,
        keyboardType: inputType,
        obscureText: hidden,
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
