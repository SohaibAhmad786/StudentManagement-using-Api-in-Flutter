import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:std_mngmnt_systm/View/std_login.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () => Get.to(const Std_Login()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 70,
            child: Image.asset("lib/images/2.jpg", fit: BoxFit.scaleDown),
          ),
          const Expanded(
            flex: 5,
            child: Text(
              "Student Management",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey[350],
              color: Colors.blue,
            ),
          ),
          const Expanded(
            flex: 20,
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
