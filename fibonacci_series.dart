void main() {
  var n1 = 1;
  var n2 = 1;
  var num = 10;
  var i;
  var sum;
  for (i = 2; i <= num; i++) {
    sum = n1 + n2;
    print(sum);
    n2 = n1; //1
    n2 = sum; //1
  }
}
