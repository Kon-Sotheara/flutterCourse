
import 'package:flutter/material.dart';
import 'package:project/w9/expenseApp/model/expenseModel.dart';
import 'package:project/w9/expenseApp/ui/expense_card.dart';

class ExpenseList extends StatelessWidget {
  final List<ExpenseModel> expensesData;
  const ExpenseList({super.key, required this.expensesData});
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ...expensesData.map((e) => ExpenseCard(expense: e,))
    ]);
  }
}