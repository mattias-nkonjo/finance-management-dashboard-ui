import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:finance_management_dashboard/widgets/notification.dart';
import 'package:finance_management_dashboard/widgets/profile_card.dart';
import 'package:finance_management_dashboard/widgets/search_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            AppConstStrings.dashboard,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Expanded(child: Spacer()),
          const SearchField(),
          const NotificationWidget(),
          const VerticalDivider(
            color: AppColors.black,
            thickness: 2,
          ),
          const ProfileCard(),
        ],
      ),
    );
  }
}
