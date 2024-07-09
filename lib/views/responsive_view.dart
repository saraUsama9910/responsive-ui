import 'package:flutter/material.dart';
import 'package:respons/widgets/adaptive_layout_widget.dart';
import 'package:respons/widgets/responssive_desktop_layout.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout:(context) => const AdaptiveDesktopLayout(),),
    );
  }
}
