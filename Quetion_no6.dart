class customer {
  //instance variable

  int? id;
  String? name;
  int? discount;

  //creating customer constructor

  customer(int id, String name, int discount) {
    this.id = id;
    this.name = name;
    this.discount = discount;
  }
  get getid => id;
  get getname => name;
  get getdiscount => discount;

  void set setdiscount(int discount) {
    this.discount = discount;
  }

  @override
  String toString() {
    return "[(id:$id)]";
  }
}

class invoice {
  //instance variable
  customer variab = customer(001, "karthika", 10);
  int? id1;
  double? amount;
  invoice(int id1, double amount, customer custom) {
    this.variab = custom;
    this.id1 = id1;
    this.amount = amount;
  }

  get getid1 => id1;
  get getamount => amount;
  get getcoustomerid => variab.id;
  get getcustomername => variab.name;
  get getcustomerdiscount => variab.discount;

  set custom(custom) {
    this.custom = custom;
  }

  void set setamount(double amount) {
    this.amount = amount;
  }

  get Discount {
    double result = ((variab.discount! * amount!) / 100);

    double amountAfterdiscount = amount! - result;
    return (amountAfterdiscount);
  }

  String toString() {
    print(variab.toString());
    return "invoice[id=$id1,custom=$variab.name($variab.id)($variab.discount)]";
  }
}

void main() {
  invoice obj = invoice(002, 20000, customer(1, "karthika", 50));
  double value = (obj.Discount);
  print(('discount value:$value'));
  print(obj.toString());
}
