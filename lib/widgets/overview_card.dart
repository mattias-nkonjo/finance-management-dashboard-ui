import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/data/overview_data.dart';
import 'package:finance_management_dashboard/model/overview_model.dart';
import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({
    Key? key,
    required this.overviewData,
  }) : super(key: key);

  final OverviewData overviewData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                overviewData.icon,
                color: AppColors.grey,
              ),
              const SizedBox(width: 10),
              Text(
                overviewData.title,
                style: const TextStyle(color: AppColors.grey, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                overviewData.amount,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
              Chip(
                label: Row(
                  children: [
                    Icon(
                      overviewData.arrow,
                      size: 15,
                      color: overviewData.textColor,
                    ),
                    Text(
                      overviewData.percentChange,
                      style: TextStyle(
                        color: overviewData.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                backgroundColor: overviewData.color,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: overviewData.amountChange,
                  style: const TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: ' than last month',
                  style: TextStyle(color: AppColors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OverviewInfoCardGridView extends StatelessWidget {
  const OverviewInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: overviewDataDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => OverviewCard(
        overviewData: overviewDataDetails[index],
      ),
    );
  }
}
