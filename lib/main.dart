import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:finance_management_dashboard/screen/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: AppConstStrings.appTitle,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}
