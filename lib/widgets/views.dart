import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/assets/images.dart';

class Views{
  static cardViews({dateName,titleString,nameString}){
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      shadowColor: Colors.blue,
      child: ListTile(
        leading: SizedBox(
          height: 50.0,
          width: 50.0,
          //padding: const EdgeInsets.all(5.0),
          child: SvgPicture.asset(Images.foods),
        ),
        title: Text(
          dateName,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w100,
            color: Colors.black38,
          ),
        ),
        subtitle: Text(
          titleString,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        trailing: SizedBox(
          width: 100.0,
          height: 30.0,
          child: Card(
            elevation: 10.0,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                nameString,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}