import 'package:flutter/material.dart';
import 'package:std_mngmnt_systm/View/display_std.dart';
import 'package:std_mngmnt_systm/View/splash_screen.dart';
import 'package:std_mngmnt_systm/View/std_login.dart';
import 'package:get/get.dart';
import 'package:std_mngmnt_systm/View/std_registr.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    ),
  );
}
