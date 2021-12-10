import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';

Widget customButton(
    {BuildContext? context,
    String? title,
    double? height,
    GestureTapCallback? onTapFun}) {
  AppInfo appInfo = AppInfo(context!);
  return GestureDetector(
    child: Container(
      height: height,
      width: appInfo.screenWidth() * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: MAIN_COLOR,
      ),
      child: Center(
        child: Text(
          title!,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
    onTap: onTapFun!,
  );
}
