import 'package:finance_management_dashboard/widgets/header.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Header(),
        ],
      ),
    ));
  }
}
