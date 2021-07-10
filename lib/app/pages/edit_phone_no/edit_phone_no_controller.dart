import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPhoneNoController extends GetxController {



 /// Is true when ID valid
  bool isPhNoValid = false;

    void checkIfPhNoIsValid(String value) {
    if (value.length==10) {
      isPhNoValid = true;
    } else {
      isPhNoValid = false;
    }
  }
  }
