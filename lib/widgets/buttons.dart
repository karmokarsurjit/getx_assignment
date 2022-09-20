import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_assignment/widgets/text_fields.dart';

class Buttons {
  static regularButton({routes,texts,fontWeight,uds=0.0,lrs=0.0,height,width,btcolor,textSize, textColor,align}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs,vertical: uds),
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: () {
            //if() {
              Get.toNamed(routes);
           // }
          },
          child: TextFields.texts(texts: texts,fontWeight: fontWeight,textSize: textSize,colors: textColor,align: align),
          style: ElevatedButton.styleFrom(
            backgroundColor: btcolor,
          ),
        ),
      ),
    );
  }

  static textButton({routes, texts, color, align, lrs=0.0, uds=0.0,fontWeight,textSize }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs,vertical: uds),
      child: TextButton(
        style: ButtonStyle(alignment: align,),
        onPressed: () {
          Get.toNamed(routes);
        },
        child: TextFields.texts(texts: texts,colors: color,fontWeight: fontWeight,textSize: textSize),
      ),
    );
  }
}
