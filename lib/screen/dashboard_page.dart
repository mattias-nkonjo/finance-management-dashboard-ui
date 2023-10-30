import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:finance_management_dashboard/widgets/header.dart';
import 'package:finance_management_dashboard/widgets/latest_transaction.dart';
import 'package:finance_management_dashboard/widgets/overview_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppConstStrings.overview,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16),
                const OverviewInfoCardGridView(),
                const SizedBox(height: 16),
                const LatestTransaction()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
