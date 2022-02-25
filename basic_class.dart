class Account {
  var balance = 0;
  void deposit(int amount) {
    var value = balance + amount;
    print(value);
  }

  bool Withdraw(double amount) {
    if (balance > amount) {
      var value = balance - amount;
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  final money = new Account();
  money.deposit(100);
  money.deposit(50);
  var totalAmount = money.Withdraw(100);
  print(totalAmount);
  //money.deposit(50);
}
