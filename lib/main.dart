import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance QR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MAIN_COLOR,
      ),
      home: Directionality(
          textDirection: TextDirection.rtl,
          child: HomePage()),
    );
  }
}
