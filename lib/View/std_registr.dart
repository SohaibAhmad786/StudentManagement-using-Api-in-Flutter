import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:std_mngmnt_systm/Controller/student_controller.dart';
import 'package:std_mngmnt_systm/View/display_std.dart';

class Std_Registration extends StatefulWidget {
  const Std_Registration({Key? key}) : super(key: key);

  @override
  State<Std_Registration> createState() => _Std_RegistrationState();
}

TextEditingController namectrl = TextEditingController();
TextEditingController agectrl = TextEditingController();
TextEditingController genderctrl = TextEditingController();

class _Std_RegistrationState extends State<Std_Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            const SizedBox(
              height: 60,
              child: Text(
                "Student Registration Form",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
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
                      controller: namectrl,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Name",
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
                      controller: agectrl,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Age",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_month,
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
                      controller: genderctrl,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Gender",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.question_mark,
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
                      StudentController ref = StudentController();
                      String name = namectrl.text;
                      String gender = genderctrl.text;
                      String age = agectrl.text;
                      ref.addStudent(
                        name,
                        age,
                        gender,
                      );
                      namectrl.clear();
                      agectrl.clear();
                      genderctrl.clear();
                    },
                    child: const Text(
                      "Register",
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
