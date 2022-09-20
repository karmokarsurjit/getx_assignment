import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getx_assignment/shared/assets/images.dart';
import 'package:getx_assignment/shared/constants/colors.dart';
import 'package:getx_assignment/shared/constants/font_sizes.dart';
import 'package:getx_assignment/widgets/text_fields.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopLayer {
  static topLayer({SizingInformation? sizingInformation}) {
    return Column(
      children: [
        TextFields.texts(
            texts: "Meal Rate",
            align: TextAlign.center,
            textSize: FontSizes.MEDIUM,
            colors: ConstantColors.TEXTGREY,
            uds: 10.0),
        Stack(
          fit: StackFit.passthrough,
          children: [
            Container(
              height: 120,
              alignment: Alignment.center,
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 5,
                    color: const Color.fromARGB(150, 242, 201, 76),
                    style: BorderStyle.solid),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 12,
                    color: const Color.fromARGB(150, 242, 201, 76),
                    style: BorderStyle.solid),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  SvgPicture.asset(Images.bd_currency),
                  TextFields.texts(texts: "48.44",textSize: FontSizes.LARGE,colors: ConstantColors.TEXTGREY)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 180.0,),
                Column(
                  children: [
                    TextFields.texts(texts: "Last Month",colors: ConstantColors.TEXTGREY,textSize: FontSizes.SMALL),
                    TextFields.texts(texts: "76556.00",colors: ConstantColors.TEXTGREY,textSize: FontSizes.REGULAR,uds: 5.0),
                    TextFields.texts(texts: "Current Month",colors: ConstantColors.TEXTGREY,textSize: FontSizes.SMALL),
                    TextFields.texts(texts: "88866.00",colors: ConstantColors.TEXTGREY,textSize: FontSizes.MEDIUM,uds: 5.0),
                    TextFields.texts(texts: "Total Deposit",colors: ConstantColors.TEXTBLACK,textSize: FontSizes.BIG),
                  ],
                ),
                Column(
                  children: [
                    TextFields.texts(texts: "2300",colors: ConstantColors.TEXTGREEN,textSize: FontSizes.LARGE,fontWeight: FontWeight.w500,lrs: 10.0),
                    TextFields.texts(texts: "My Balance",colors: ConstantColors.TEXTBLACK,textSize: FontSizes.SMALL),
                  ],
                ),
                Column(
                  children: [
                    TextFields.texts(texts: "Last Month",colors: ConstantColors.TEXTGREY,textSize: FontSizes.SMALL),
                    TextFields.texts(texts: "76556.00",colors: ConstantColors.TEXTGREY,textSize: FontSizes.REGULAR,uds: 5.0),
                    TextFields.texts(texts: "Current Month",colors: ConstantColors.TEXTGREY,textSize: FontSizes.SMALL),
                    TextFields.texts(texts: "88866.00",colors: ConstantColors.TEXTGREY,textSize: FontSizes.MEDIUM,uds: 5.0),
                    TextFields.texts(texts: "Total Expenses",colors: ConstantColors.TEXTBLACK,textSize: FontSizes.BIG),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
