class TransactionData {
  final bool checked;
  final String title;
  final String date;
  final String description;
  final String amount;
  final String status;

  TransactionData({
    this.checked = false,
    required this.title,
    required this.date,
    required this.description,
    required this.amount,
    required this.status,
  });
}
