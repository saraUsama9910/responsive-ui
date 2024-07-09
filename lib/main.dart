import 'package:flutter/material.dart';
import 'package:respons/views/responsive_view.dart';

void main() {
  runApp(const ResponsiveUI());
}

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveView(),
    );
  }
}
