import 'package:flutter/material.dart';
import 'package:respons/widgets/adaptive_layout_widget.dart';
import 'package:respons/widgets/responsive_desktop_layout.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(52, 223, 224, 224),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const AdaptiveDesktopLayout(),
      ),
    );
  }
}
