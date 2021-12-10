import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';
import 'package:smart_attendance_qr_code/widgets/custom_button.dart';
import 'package:smart_attendance_qr_code/widgets/custom_textfeild.dart';

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
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Form(
                child: ListView(
              children: [
                customTextField(labelText: "الاسم"),
                SizedBox(
                  height: 20,
                ),
                customTextField(labelText: "العنوان"),
                SizedBox(
                  height: 100,
                ),
                customButton(
                    context: context,
                    title: "اضافة",
                    height: 45,
                    onTapFun: () {
                      final snackBar = SnackBar(
                        content: Text(
                          'تمت الاضافة بنجاح',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 18),
                        ),
                        backgroundColor: MAIN_COLOR,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    })
              ],
            )),
          )),
    );
  }
}
