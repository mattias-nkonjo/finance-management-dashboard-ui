import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_images.dart';
import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          minRadius: 22,
          backgroundImage: AssetImage(
            AppImages.profilePic,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstStrings.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                AppConstStrings.email,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: AppColors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
