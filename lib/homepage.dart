import 'package:flutter/material.dart';
import 'package:home/layouts/mobile_layout.dart';
import 'package:home/layouts/responsive_layout.dart';
import 'package:home/layouts/web_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileLayout: MobileLayout(),
        webLayout: WebLayout(),
      ),
    );
  }
}
