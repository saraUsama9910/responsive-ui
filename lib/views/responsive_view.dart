import 'package:flutter/material.dart';
import 'package:respons/widgets/adaptive_layout_widget.dart';
import 'package:respons/widgets/responsive_desktop_layout.dart';
import 'package:respons/widgets/responsive_mobile_layout.dart';
import 'package:respons/widgets/responsive_tablet_layout.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: const Icon(Icons.menu),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const ResponsiveMobileLayout(),
        tabletLayout: (context) => const ResponsiveTabletLayout(),
        desktopLayout: (context) => const ResponsiveDesktopLayout(),
      ),
    );
  }
}
