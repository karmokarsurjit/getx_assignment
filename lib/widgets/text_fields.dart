import 'package:flutter/material.dart';
import 'package:getx_assignment/shared/constants/font_sizes.dart';
import '../shared/constants/colors.dart';

class TextFields {
  static textFormField({texts,TextInputType? inputType,hidden=false,uds=0.0,lrs=0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs, vertical: uds),
      child: TextFormField(
        style: TextStyle(color: ConstantColors.TEXTWHITE),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ConstantColors.FIELDOUTLINE),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ConstantColors.FIELDOUTLINE),
          ),
          labelText: texts,
          labelStyle: TextStyle(color: ConstantColors.TEXTWHITE)
        ),
        keyboardType: inputType,
        obscureText: hidden,
      ),
    );
  }

  static texts({texts,colors=ConstantColors.TEXTBLACK,textSize=FontSizes.REGULAR,fontWeight=FontWeight.w300,TextAlign? align, abs=0.0}){
    return Padding(
      padding: EdgeInsets.all(abs),
      child: Text(texts,style: TextStyle(color: colors,fontSize: textSize,fontWeight: fontWeight),textAlign: align,),
    );
  }

}
