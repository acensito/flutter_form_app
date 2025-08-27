import 'package:flutter/material.dart';
import 'package:form_app/config/router/app_router.dart';
import 'package:form_app/config/theme/app_theme.dart';

void main() {
  // debugPrintRebuildDirtyWidgets = true;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // showPerformanceOverlay: true,
      theme: AppTheme().getTheme()
    );
  }
}
