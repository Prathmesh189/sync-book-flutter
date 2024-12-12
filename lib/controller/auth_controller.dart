import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_color.dart';

class AuthController extends GetxController{
  var borderColor = ColorsForApp.primaryButtonColor.obs;
  void changeBorderColor(Color color) {
    borderColor.value = color;
  }

}