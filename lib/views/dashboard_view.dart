import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_dash_board/views/widgets/dashboard_desektop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desektopLayout: (context) => DashboardDesektopLayout(),
      ),
    );
  }
}
