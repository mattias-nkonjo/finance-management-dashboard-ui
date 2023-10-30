import 'package:finance_management_dashboard/constants/app_colors.dart';
import 'package:finance_management_dashboard/constants/app_icons.dart';
import 'package:finance_management_dashboard/constants/app_strings.dart';
import 'package:finance_management_dashboard/data/transaction_data.dart';
import 'package:finance_management_dashboard/model/transaction_model.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstStrings.latestTransaction,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    AppConstStrings.viewAll,
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 16,
              columns: const [
                DataColumn(
                  label: Text(
                    AppConstStrings.toFrom,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppConstStrings.date,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppConstStrings.description,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppConstStrings.amount,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppConstStrings.status,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppConstStrings.action,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
              ],
              rows: List.generate(
                transactionDataDetails.length,
                (index) => recentFileDataRow(transactionDataDetails[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(TransactionData transactionData) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            const Icon(
              AppIcons.profile,
              color: AppColors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                transactionData.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          transactionData.date,
          style: const TextStyle(color: AppColors.grey),
        ),
      ),
      DataCell(
        Text(
          transactionData.description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      DataCell(
        Text(
          transactionData.amount,
          style: const TextStyle(
              color: AppColors.green, fontWeight: FontWeight.bold),
        ),
      ),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: AppColors.green)),
          child: Text(
            transactionData.status,
            style: const TextStyle(
                color: AppColors.green, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const DataCell(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                AppIcons.link,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                AppIcons.delete,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                AppIcons.threeDot,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
