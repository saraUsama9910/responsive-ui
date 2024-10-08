import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:respons/views/responsive_view.dart';

void main() {
  runApp(
      DevicePreview(enabled: true, builder: (context) => const ResponsiveUI()));
}

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const ResponsiveView(),
    );
  }
}
//finish my app
