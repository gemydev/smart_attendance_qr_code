import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/functions/navigation_funs.dart';
import 'package:smart_attendance_qr_code/screens/add_students.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';
import 'package:smart_attendance_qr_code/widgets/custom_table.dart';

class StudentsInfo extends StatelessWidget {
  const StudentsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "بيانات الطلاب"),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomTable()),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> normalShift(context, AddStudents()),
        backgroundColor: MAIN_COLOR,
        child: Icon(Icons.add),
      ),
    );
  }
}
