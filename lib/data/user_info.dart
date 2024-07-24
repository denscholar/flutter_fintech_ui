enum TransactionType {
  outflow,
  inflow,
}

enum ItemCategoryType {
  fashion,
  grocery,
  payments,
}

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  const UserInfo({
    required this.name,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions,
  });
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction({
    required this.amount,
    required this.categoryType,
    required this.transactionType,
    required this.itemCategoryName,
    required this.itemName,
    required this.date,
  });
}

const List<Transaction> transaction1 = [
  Transaction(
      categoryType: ItemCategoryType.fashion,
      transactionType: TransactionType.outflow,
      itemName: "Puma shoe",
      amount: "N2000",
      itemCategoryName: "Shoes",
      date: "Oct. 30th"),
];
const List<Transaction> transaction2 = [
    Transaction(
      categoryType: ItemCategoryType.fashion,
      transactionType: TransactionType.outflow,
      itemName: "Jankara Watch",
      amount: "N8000",
      itemCategoryName: "Watch",
      date: "Sept. 30th"),
  
];

const userData = UserInfo(
    name: "Dennis",
    totalBalance: "N40000.00",
    inflow: "N5000.00",
    outflow: "N2000",
    transactions: transaction1);
