import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';

Widget customGridView(
    {List? list,
    GestureTapCallback? onTapFun,
    BuildContext? context,
    String? text}) {
  AppInfo appInfo = AppInfo(context!);
  return GridView.builder(
    itemCount: list!.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
    ),
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: GestureDetector(
          onTap: onTapFun!,
          child: Container(
            width: (appInfo.screenWidth() - 20) * 0.3,
            decoration: BoxDecoration(
                color: MAIN_COLOR,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text(
              text!,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'kufam'),
            )),
          ),
        ),
      );
    },
  );
}
