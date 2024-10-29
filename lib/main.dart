import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:toku_app/views/toku_screen.dart';
import 'package:toku_app/utils/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => GetMaterialApp(
          home: TokuScreen(),
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          darkTheme: AppTheme.darkTheme,
          theme: AppTheme.defaultTheme,
          themeMode: ThemeMode.dark,
          useInheritedMediaQuery: true),
    ),
  );
}
