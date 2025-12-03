import 'package:project/w9/expenseApp/model/expenseModel.dart';

List<ExpenseModel> registeredExpenses = [
  ExpenseModel(
    title: "Food",
    amount: 10,
    date: DateTime.now(),
    category: ExpenseType.food,
  ),
  ExpenseModel(
    title: "Notebook",
    amount: 2.5,
    date: DateTime.now(),
    category: ExpenseType.work,
  ),
  ExpenseModel(
    title: "Swim",
    amount: 12.5,
    date: DateTime.now(),
    category: ExpenseType.leisure,
  ),
  ExpenseModel(
    title: "Ticket",
    amount: 12.5,
    date: DateTime.now(),
    category: ExpenseType.travel,
  ),
];