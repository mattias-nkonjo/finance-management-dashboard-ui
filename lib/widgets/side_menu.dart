import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_icons.dart';
import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:finance_management_dashboard/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.whiteCard,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          left: 16,
          right: 16,
          top: 24,
        ),
        child: ListView(
          children: [
            const Row(
              children: [
                Icon(
                  AppIcons.cloud,
                  size: 30,
                  color: AppColors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  AppConstStrings.cloudFinance,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              AppConstStrings.menu,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.overview,
              title: AppConstStrings.overview,
              isTapped: true,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.statistics,
              title: AppConstStrings.statistics,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.portfolios,
              title: AppConstStrings.portfolios,
              trailingIcon: Icons.expand_more,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.message,
              title: AppConstStrings.messages,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.transactions,
              title: AppConstStrings.transactions,
            ),
            const SizedBox(height: 35),
            const Text(
              AppConstStrings.general,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 30),
            DrawerListTile(
              leadingIcon: AppIcons.settings,
              title: AppConstStrings.settings,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.appearances,
              title: AppConstStrings.appearances,
            ),
            DrawerListTile(
              leadingIcon: AppIcons.needHelp,
              title: AppConstStrings.needHelp,
            ),
            const SizedBox(height: 100),
            const ListTile(
              leading: Icon(
                AppIcons.logout,
                color: AppColors.black,
              ),
              title: Text(
                AppConstStrings.logout,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
