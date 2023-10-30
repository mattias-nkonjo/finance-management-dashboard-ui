import 'package:finance_management_dashboard/screen/dashboard_page.dart';
import 'package:finance_management_dashboard/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SideMenu(),
          ),
          Expanded(
            flex: 5,
            child: DashboardPage(),
          ),
        ],
      ),
    );
  }
}
