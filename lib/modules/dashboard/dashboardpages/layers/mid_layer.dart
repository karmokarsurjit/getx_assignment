import 'package:flutter/material.dart';
import 'package:getx_assignment/shared/constants/colors.dart';
import 'package:getx_assignment/shared/constants/font_sizes.dart';
import 'package:getx_assignment/widgets/text_fields.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MidLayer{

static midLayer({SizingInformation? sizingInformation}){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      elevation: 5,
      shadowColor: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              TextFields.texts(texts: "10 \n Total Members",align: TextAlign.center, colors: ConstantColors.TEXTGREY,textSize: FontSizes.BIG,lrs: 10,uds: 10.0),
              TextFields.texts(texts: "10 \n Total Meals",align: TextAlign.center, colors: ConstantColors.TEXTGREY,textSize: FontSizes.BIG,lrs: 10,uds: 10.0),
            ],
          ),
          Column(
            children: [
              TextFields.texts(texts: "10 \n Daily Expenses",align: TextAlign.center, colors: ConstantColors.TEXTGREY,textSize: FontSizes.BIG,lrs: 10,uds: 10.0),
              TextFields.texts(texts: "10 \n Total Bazar",align: TextAlign.center, colors: ConstantColors.TEXTGREY,textSize: FontSizes.BIG,lrs: 10,uds: 10.0),
            ],
          )
        ],
      ),
    ),
  );
}

}