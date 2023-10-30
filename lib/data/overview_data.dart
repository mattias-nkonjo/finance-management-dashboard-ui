import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_icons.dart';
import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:finance_management_dashboard/model/overview_model.dart';

List overviewDataDetails = [
  OverviewData(
    icon: AppIcons.earnings,
    arrow: AppIcons.upArrow,
    title: AppConstStrings.earnings,
    amount: "\$928.41",
    color: AppColors.background,
    percentChange: "12.8%",
    amountChange: "\$118.8",
    textColor: AppColors.green,
  ),
  OverviewData(
    icon: AppIcons.spending,
    arrow: AppIcons.downArrow,
    title: AppConstStrings.spendings,
    amount: "\$169.43",
    color: AppColors.red,
    percentChange: "3.1%",
    amountChange: "\$5.2",
    textColor: AppColors.white,
  ),
  OverviewData(
    icon: AppIcons.piggybank,
    arrow: AppIcons.upArrow,
    title: AppConstStrings.saving,
    amount: "\$406.27",
    color: AppColors.background,
    percentChange: "8.2%",
    amountChange: "\$33.3",
    textColor: AppColors.green,
  ),
  OverviewData(
    icon: AppIcons.investment,
    arrow: AppIcons.upArrow,
    title: AppConstStrings.investment,
    amount: "\$1854.08",
    color: AppColors.background,
    percentChange: "9.2%",
    amountChange: "\$78.5",
    textColor: AppColors.green,
  ),
];
