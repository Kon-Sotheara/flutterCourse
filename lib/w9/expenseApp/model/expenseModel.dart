import 'package:uuid/uuid.dart';

enum ExpenseType { FOOD, TRAVEL, LEISURE, WORK }

var uuid = Uuid();

class Expense {
  final String id;
  String title;
  double amount;
  DateTime date;
  ExpenseType type;

  Expense({required this.title, required this.amount, required this.date, required this.type})
    : id = uuid.v4();
}
