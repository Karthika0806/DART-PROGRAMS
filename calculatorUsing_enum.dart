enum Operation { plus, minus, multiplication, division }
void main() {
  int a = 4;
  int b = 15;
  var Op = Operation.multiplication;
  switch (Op) {
    case Operation.plus:
      print("$a+$b=${a + b}");
      break;
    case Operation.minus:
      print("$a-$b=${a - b}");
      break;
    case Operation.multiplication:
      print("$a*$b=${a * b}");
      break;
    case Operation.division:
      print("$a/$b=${a / b}");
      break;
  }
}
