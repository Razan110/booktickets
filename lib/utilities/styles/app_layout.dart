import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }
   //getting the height for diffrent type of screens
  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

   //getting the width for diffrent type of screens
  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }

}
