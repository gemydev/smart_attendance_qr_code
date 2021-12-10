import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';
import 'package:smart_attendance_qr_code/widgets/custom_button.dart';

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
            child: customButton(
                context: context, title: "تسجيل الدخول", height: 45),
          ),
          Positioned(
            bottom: appInfo.screenHeight() * 0.2,
            left: appInfo.screenWidth() * 0.2,
            child:
                customButton(context: context, title: "تسجيل جديد", height: 45),
          ),
        ],
      ),
    );
  }
}
