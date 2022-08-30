import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:std_mngmnt_systm/Controller/student_controller.dart';
import 'package:std_mngmnt_systm/View/std_registr.dart';

class ShowAllStudent extends StatefulWidget {
  const ShowAllStudent({Key? key}) : super(key: key);

  @override
  State<ShowAllStudent> createState() => _ShowAllStudentState();
}

StudentController ref = StudentController();

class _ShowAllStudentState extends State<ShowAllStudent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStudent();
  }

  getStudent() async {
    await ref.getAllStudent();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppRow(),
      ),
      body: ListView.builder(
        itemCount: ref.slist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blueAccent),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    ref.slist[index].iD.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                title: Text(
                  ref.slist[index].sNAME.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
                subtitle: Text(
                  ref.slist[index].gENDER.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    ref.slist[index].aGE.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  AppRow() {
    return Row(
      children: [
        const Text(
          "Student Management",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        // const SizedBox(
        //   width: 45,
        // ),
        InkWell(
          onTap: () {
            Get.to(const Std_Registration());
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 85),
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Center(
                child: Text(
                  "Add New",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
