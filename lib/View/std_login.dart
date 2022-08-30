import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:std_mngmnt_systm/View/display_std.dart';
import 'package:std_mngmnt_systm/View/splash_screen.dart';

class Std_Login extends StatefulWidget {
  const Std_Login({Key? key}) : super(key: key);

  @override
  State<Std_Login> createState() => _Std_LoginState();
}

class _Std_LoginState extends State<Std_Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset("lib/images/2.jpg", fit: BoxFit.scaleDown),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.blue[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.blue[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 120,
                  left: 120,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.blue[300],
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(const ShowAllStudent());
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
