import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout, required this.desektopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desektopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return desektopLayout(context);
      }
    });
  }
}
