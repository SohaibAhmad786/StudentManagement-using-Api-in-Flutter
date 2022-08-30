import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:std_mngmnt_systm/Model/std_model.dart';
import 'package:get/get.dart';
import 'package:std_mngmnt_systm/View/display_std.dart';

class StudentController {
  List<student_model> slist = [];

  Future<List<student_model>> getAllStudent() async {
    String address =
        "http://192.168.18.50/StudentAPIExample/api/Student/getAllStudent";
    final response = await http.get(Uri.parse(address));
    var data = await jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      slist.clear();
      for (var i in data) {
        slist.add(student_model.fromJson(i));
      }
      // ignore: avoid_print
      print(slist);
      return slist;
    } else {
      return slist;
    }
  }

  addStudent(String name, String age, String gender) async {
    student_model ref = student_model();
    String addres =
        "http://192.168.18.50/StudentApiExample/api/Student/PostStudent";
    Map<String, dynamic> data = 
    {"SNAME": name, "AGE": age, "GENDER": gender};

    var response = await http.post(
      Uri.parse(addres),
      body: data,
    );
    if (response.statusCode == 200) {
      print("Data saved Successfully");
      Get.to(const ShowAllStudent());
    }
  }
}
