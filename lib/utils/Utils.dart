import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
class Utils {

  static toast(String message, Color color) {
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, backgroundColor: color);
  }

}