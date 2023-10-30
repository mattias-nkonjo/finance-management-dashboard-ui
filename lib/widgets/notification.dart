import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_icons.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    this.counter = 0,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Badge(
      backgroundColor: AppColors.red,
      label: Text('$counter'),
      textColor: AppColors.white,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16 / 2),
        decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: const IconButton(
          color: AppColors.black,
          iconSize: 30,
          icon: Icon(AppIcons.notification, weight: 50),
          onPressed: null,
        ),
      ),
    );
  }
}
