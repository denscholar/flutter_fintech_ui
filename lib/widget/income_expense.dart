import 'package:flutter/material.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  ExpenseData({
    required this.label,
    required this.amount,
    required this.icon,
  });
}

class IncomeExpense extends StatelessWidget {
  const IncomeExpense({super.key, required this.expenseData});

  final ExpenseData expenseData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 100.0,
      height: 82.0,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: expenseData.label == 'Income'
              ? const Color(0xff6443F3)
              : const Color(0xFFDF2020),
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expenseData.label,
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 3.0,
              ),
              Text(expenseData.amount,
                  style: const TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.bold))
            ],
          )),
          const SizedBox(
            width: 5.0,
          ),
          Icon(
            expenseData.icon,
            color: expenseData.label == 'Income' ? Colors.white : Colors.white,
          )
        ],
      ),
    );
  }
}
