import 'package:flutter/material.dart';

AppBar customAppBar({String? title}) {
  return AppBar(
    title: Text(title!),
    centerTitle: true,
    actions: [
      if (title == "بيانات الطلاب")
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
          child: Container(
            width: 50,
            child: InkWell(
              borderRadius:BorderRadius.circular(50),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.search),
              ),
            ),
          ),
        )
      else
        Container()
    ],
  );
}
