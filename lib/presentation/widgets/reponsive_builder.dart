import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/utils/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final displaySize = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(displaySize.width);

    if (deviceType == DeviceType.mobile) {
      return mobile;
    } else if (deviceType == DeviceType.tablet) {
      return tablet ?? mobile;
    }
    return desktop;
  }
}
