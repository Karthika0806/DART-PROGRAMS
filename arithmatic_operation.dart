class arithmaticOp {
  //static is called before the main method and we access the value without creating
  //instance method
  static add(int a, int b) {
    return a + b;
  }

  static sub(int c, int d) {
    return c - d;
  }
}

void main() {
  //class name using method accessing
  var value1 = arithmaticOp.add(18, 10);
  var value2 = arithmaticOp.sub(3, 8);
  print('value1 is:${value1}');
  print('value2 is:${value2}');
}
