import 'package:flutter/material.dart';

class OverviewData {
  final String title;
  final IconData icon;
  final IconData arrow;
  final String amount;
  final String percentChange;
  final String amountChange;
  final Color color;
  final Color textColor;

  OverviewData({
    required this.title,
    required this.icon,
    required this.arrow,
    required this.amount,
    required this.percentChange,
    required this.amountChange,
    required this.color,
    required this.textColor,
  });
}
