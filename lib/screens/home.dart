import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_attendance_qr_code/functions/navigation_funs.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';

import 'capture_qr.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppInfo appInfo = AppInfo(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("العفاني"),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
          itemCount: 3,
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
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black, width: 2)),
                child: GestureDetector(
                  onTap: ()=> normalShift(context, QRViewExample()),
                  child: Center(
                      child: Text(
                    "الصف الاول",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
