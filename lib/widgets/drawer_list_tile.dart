import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  IconData? trailingIcon;
  final bool isTapped;
  void Function()? onTap;

  DrawerListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailingIcon,
    this.isTapped = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isTapped ? AppColors.blue : AppColors.transparent,
      ),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: isTapped ? AppColors.white : AppColors.grey,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isTapped ? AppColors.white : AppColors.grey,
          ),
        ),
        trailing: Icon(
          trailingIcon,
          color: isTapped ? AppColors.white : AppColors.grey,
        ),
        onTap: onTap,
      ),
    );
  }
}
