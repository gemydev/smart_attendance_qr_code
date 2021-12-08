import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/screens/capture_qr.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "تسجيل الحضور"),
      body: QRViewScreen(),
    );
  }
}
