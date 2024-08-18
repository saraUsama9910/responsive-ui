import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_drawer.dart';
import 'package:respons/widgets/responsive_mobile_layout.dart';

class ResponsiveTabletLayout extends StatelessWidget {
  const ResponsiveTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: ResponsiveMobileLayout(),
        ),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}
