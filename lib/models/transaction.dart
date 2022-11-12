import 'dart:ui';

class Transaction {
  final String image;
  final String name;
  final String date;
  final String price;
  final String status;
  final Color statusColor;

  Transaction({
    required this.image,
    required this.name,
    required this.date,
    required this.price,
    required this.status,
    required this.statusColor,
  });
}
