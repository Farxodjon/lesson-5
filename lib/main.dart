import '/routes/app_pages.dart';
import '/routes/app_routes.dart';
import 'ui/contants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppContants.key,
      title: 'Simple app',
      routes: AppPages.page,
      themeMode: ThemeMode.light,
      initialRoute: AppRoutes.initial,
      debugShowCheckedModeBanner: false,
    );
  }
}