import 'package:flutter/material.dart';
import 'package:respons/widgets/adaptive_layout_widget.dart';
import 'package:respons/widgets/custom_drawer.dart';
import 'package:respons/widgets/responsive_desktop_layout.dart';
import 'package:respons/widgets/responsive_mobile_layout.dart';
import 'package:respons/widgets/responsive_tablet_layout.dart';

class ResponsiveView extends StatefulWidget {
  const ResponsiveView({super.key});

  @override
  State<ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scafoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const ResponsiveMobileLayout(),
        tabletLayout: (context) => const ResponsiveTabletLayout(),
        desktopLayout: (context) => const ResponsiveDesktopLayout(),
      ),
    );
  }
}
