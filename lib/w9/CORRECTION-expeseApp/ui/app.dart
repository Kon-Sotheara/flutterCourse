import 'package:flutter/material.dart';
import 'package:project/w9/CORRECTION-expeseApp/ui/expenses/expense_form.dart';
 
import 'expenses/expenses.dart';

class App extends StatelessWidget {
  const App({super.key});

  // @override
  void onClick(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          // height: 00,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Input your expense",
                      style: TextStyle(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 196, 44, 27),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {Navigator.pop(context)}, 
                      child: Text("Back"),
                      
                    )
                  ],
                ),
                MyWidget(),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text('Ronan-The-Best Expenses App'),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(0, 0, 10, 0),
            child: IconButton(
              onPressed: () => {onClick(context)},
              icon: Icon(Icons.add),
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ExpensesView(),
    );
  }
}
