import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/screens/capture_qr.dart';
import 'package:smart_attendance_qr_code/widgets/custom_app_bar.dart';

class MoneyScreen extends StatefulWidget {
  const MoneyScreen({Key? key}) : super(key: key);

  @override
  _MoneyScreenState createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "تسجيل دفع الفلوس"),
      body: QRViewScreen(),
    );
  }
}
