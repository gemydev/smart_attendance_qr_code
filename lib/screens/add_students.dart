import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({Key? key}) : super(key: key);

  @override
  _AddStudentsState createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "اضافة طالب"),
      body:
          Directionality(textDirection: TextDirection.rtl, child: Container()),
    );
  }
}
