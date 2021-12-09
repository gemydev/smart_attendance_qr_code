import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/functions/navigation_funs.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';
import 'package:smart_attendance_qr_code/screens/attendance.dart';
import 'package:smart_attendance_qr_code/screens/money.dart';
import 'package:smart_attendance_qr_code/screens/students_info.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';

class Dashboard extends StatefulWidget {
  final String? title;

  Dashboard({Key? key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    AppInfo appInfo = AppInfo(context);
    var levels = ["تسجيل الحضور", "تسجيل دفع الفلوس", "عرض بيانات الطلاب"];
    int selectedItem = 0;
    return Scaffold(
      appBar: customAppBar(title: widget.title!),
      body: Directionality(
        child: Center(
          child: GridView.builder(
            itemCount: levels.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Container(
                  width: (appInfo.screenWidth() - 20) * 0.3,
                  decoration: BoxDecoration(
                      color: MAIN_COLOR,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedItem = index;
                      });
                      selectedItem == 0
                          ? normalShift(context, AttendanceScreen())
                          : selectedItem == 1
                              ? normalShift(context, MoneyScreen())
                              : normalShift(context, StudentsInfo());
                    },
                    child: Center(
                        child: Text(
                      levels[index].toString(),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                ),
              );
            },
          ),
        ),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
