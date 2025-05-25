import 'package:flutter/material.dart';

class GestureSidebar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget child;

  const GestureSidebar({
    super.key,
    required this.scaffoldKey,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 0) {
          scaffoldKey.currentState?.openDrawer();
        }
      },
      child: child,
    );
  }
}