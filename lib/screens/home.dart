import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_attendance_qr_code/constants/colors.dart';
import 'package:smart_attendance_qr_code/functions/navigation_funs.dart';
import 'package:smart_attendance_qr_code/functions/responsive_ui/app_info.dart';
import 'package:smart_attendance_qr_code/screens/dashboard.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  var levels = {"الصف الأول": 1, "الصف الثاني": 2, "الصف الثالث": 3};
  int selectedItem = 0;

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
          itemCount: levels.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: GestureDetector(
                onTap: () => normalShift(context,
                    Dashboard(title: levels.keys.toList()[index].toString())),
                child: Container(
                  width: (appInfo.screenWidth() - 20) * 0.3,
                  decoration: BoxDecoration(
                      color: MAIN_COLOR,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: Center(
                      child: Text(
                    levels.keys.toList()[index].toString(),
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'kufam'),
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
