import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';

Widget customTextField({
  String? labelText,
}) {
  return TextField(
    textDirection: TextDirection.rtl,
    style: TextStyle(color: MAIN_COLOR),
    decoration: InputDecoration(
        labelText: labelText!,
        labelStyle: TextStyle(
            color: MAIN_COLOR, fontSize: 16),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: MAIN_COLOR)),
        disabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: MAIN_COLOR)),
        border: UnderlineInputBorder(borderSide: BorderSide(color: MAIN_COLOR)),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: MAIN_COLOR))),
  );
}
