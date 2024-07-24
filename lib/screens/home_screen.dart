import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/income_expense.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Row(
              children: [
                Expanded(
                    child: IncomeExpense(
                        expenseData: ExpenseData(
                            label: "Income",
                            amount: "₦3,000.00",
                            icon: Icons.arrow_upward))),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                    child: IncomeExpense(
                  expenseData: ExpenseData(
                      label: "Expenses",
                      amount: "-₦5,000.00",
                      icon: Icons.arrow_downward),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
