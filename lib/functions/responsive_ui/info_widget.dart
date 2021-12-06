import 'package:flutter/material.dart';
import 'device_info.dart';
import 'get_device_type.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo)
      returnedWidget;
  InfoWidget({required this.returnedWidget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localHeight: constraints.maxHeight,
          localWidth: constraints.maxWidth,
        );
        return returnedWidget(context, deviceInfo);
      },
    );
  }
}
