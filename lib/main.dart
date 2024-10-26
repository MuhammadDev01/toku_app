import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/screens/toku_screen.dart';
import 'package:toku_app/utils/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          home: TokuScreen(),
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          darkTheme: AppTheme.darkTheme,
          theme: AppTheme.defaultTheme,
          useInheritedMediaQuery: true),
    ),
  );
}
