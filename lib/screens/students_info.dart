import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';
import 'package:smart_attendance_qr_code/widgets/custom_table.dart';

class StudentsInfo extends StatelessWidget {
  const StudentsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(title: "بيانات الطلاب"),
        body: CustomTable(),
      ),
    );
  }
}
