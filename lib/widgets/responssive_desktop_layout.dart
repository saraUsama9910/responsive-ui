import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_drawer.dart';

class AdaptiveDesktopLayout extends StatelessWidget {
  const AdaptiveDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
