import 'package:batch32/screen/area_circle_screen.dart';
import 'package:batch32/screen/arithmetic_screen.dart';
import 'package:batch32/screen/column_screen.dart';
import 'package:batch32/screen/dashboard_screen.dart';
import 'package:batch32/screen/hello_world_screen.dart';
import 'package:batch32/screen/icon_screen.dart';
import 'package:batch32/screen/radio_button_screen.dart';
import 'package:batch32/screen/simple_interest.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioButtonScreen(),
    );
  }
}
