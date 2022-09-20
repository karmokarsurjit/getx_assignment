import 'package:flutter/material.dart';
import 'package:getx_assignment/shared/constants/colors.dart';
import 'package:getx_assignment/widgets/buttons.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MidLayer{

static midLayer({SizingInformation? sizingInformation}){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    color: Colors.white,
    elevation: 5,
    shadowColor: Colors.grey,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Buttons.regularButton(texts:"10 \n Total Members", textColor: ConstantColors.TEXTGREY,btcolor: ConstantColors.TRANSPARENT),
            SizedBox(
              width: 190,
              height: 80,
              child: Center(
                child: Text(
                  '17\n Total Meals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: const [
            SizedBox(height: 15),
            SizedBox(
              width: 190,
              height: 80,
              child: Text(
                '2347 \n Daily Expenses',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(
              width: 190,
              height: 80,
              child: Text(
                '6 \n Total Bazar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

}