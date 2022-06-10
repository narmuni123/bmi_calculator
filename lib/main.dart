import 'package:bmi_calculator/reusable/color_constant.dart';
import 'package:bmi_calculator/screens/input_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: ColorConstant.primaryAppColor,
        scaffoldBackgroundColor: ColorConstant.scaffoldBackGroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const InputScreen(),
    );
  }
}