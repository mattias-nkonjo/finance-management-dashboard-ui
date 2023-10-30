import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_icons.dart';
import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.background,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, color: AppColors.background),
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          prefixIcon: const Icon(AppIcons.search),
          labelText: AppConstStrings.searchHere,
        ),
      ),
    );
  }
}
