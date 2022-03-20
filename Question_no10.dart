class Customer {
  String? name;
  bool? Member = false;
  String? memberType;
  Customer(this.name);

  bool? ismember() {
    return Member;
  }

  void set setmember(bool Member) {
    this.Member = Member;
  }

  get customerType => memberType;

  void set setMemberType(String type) {
    memberType = type;
  }

  @override
  String toString() {
    return "Cuctomer[$name,$customerType]";
  }
}

class Visit {
  Customer c1 = Customer('');
  DiscountRate disc = DiscountRate();
  DateTime? date;
  double? serviceExpence;
  double? productExpence;
  Visit(this.c1, this.date);
  double? serviceDiscountRate;
  double? productDiscountRate;
  double? totalexpence;

  get getcustomerName => c1.name;

  double? get getserviceexpence => serviceExpence;

  void set setservicexpense(double serexp) {
    this.serviceExpence = serexp;
  }

  get getproductexpence => productExpence;
  void set setproductexpence(double proexp) {
    this.productExpence = proexp;
  }

  void set setservicediscountrate(double serdisc) {
    this.serviceDiscountRate = serdisc;
  }

  get getservicediscountrate => serviceDiscountRate;
  void set setproductdiscountrate(double prodisc) {
    this.productDiscountRate = prodisc;
  }

  get getproductdiscountrate => productDiscountRate;

  double? get totalExpence {
    double Exppence = serviceExpence! + productExpence!;
    serviceExpence =
        (serviceExpence! - (serviceExpence! * disc.serviceDiscountRate!));
    productExpence =
        (productExpence! - (productExpence! * disc.productDiscountRate!));
    var ans = serviceExpence! + productExpence!;
    return ans;
  }

  String toString() {
    return "visit[date:$date,name:${c1.name},membertype:${c1.memberType},productexpence:${productExpence},serviceexpence:${serviceExpence},totlaexpence:${totalExpence}]";
  }
}

class DiscountRate {
  double? serviceDiscountPremium = 0.2;
  double? serviceDiscountGold = 0.15;
  double? serviceDiscountSilver = 0.1;
  double? productDiscountPremium = 0.1;
  double? productDiscountGold = 0.1;
  double? productDiscountSilver = 0.1;

  double? serviceDiscountRate = 0.0;
  double? productDiscountRate = 0.0;

  double? getserviceDiscountRate(String type) {
    switch (type) {
      case 'premium':
        serviceDiscountRate = serviceDiscountPremium;
        break;
      case 'gold':
        serviceDiscountRate = serviceDiscountGold;
        break;
      case 'silver':
        serviceDiscountRate = serviceDiscountSilver;
        break;
    }
    return serviceDiscountRate;
  }

  double? getproductDiscountRate(String type) {
    switch (type) {
      case 'premium':
        productDiscountRate = productDiscountPremium;
        break;
      case 'gold':
        productDiscountRate = productDiscountGold;
        break;
      case 'silver':
        productDiscountRate = productDiscountSilver;
        break;
    }
    return productDiscountRate;
  }
}

void main() {
  final Visit obj = Visit(Customer("karthika"), DateTime.now());
  obj.c1.setMemberType = "gold";
  obj.setservicexpense = 2000;
  obj.setproductexpence = 5000;
  obj.disc.getserviceDiscountRate(obj.c1.customerType);
  obj.disc.getproductDiscountRate(obj.c1.customerType);
  print(obj.c1);
  print(obj.disc);
  print(obj.totalExpence);
  print(obj);
}
