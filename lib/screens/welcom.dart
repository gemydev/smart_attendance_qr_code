import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppInfo appInfo = AppInfo(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: appInfo.screenHeight(),
            width: appInfo.screenWidth(),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/back.jpeg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: appInfo.screenHeight(),
            width: appInfo.screenWidth(),
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          ),
          Positioned(
            bottom: (appInfo.screenHeight() * 0.2) + 60,
            left: appInfo.screenWidth() * 0.2,
            child: Container(
              height: 35,
              width: appInfo.screenWidth() * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MAIN_COLOR,
              ),
              child: Center(
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: appInfo.screenHeight() * 0.2,
            left: appInfo.screenWidth() * 0.2,
            child: Container(
              height: 35,
              width: appInfo.screenWidth() * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MAIN_COLOR,
              ),
              child: Center(
                child: Text(
                  "تسجيل جديد",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
