import 'package:flutter/material.dart';
import 'package:office_furniture_store/screen/home.dart';
import 'dart:ui' show PointerDeviceKind;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      home: const HomeScreen(),
    );
  }
}
