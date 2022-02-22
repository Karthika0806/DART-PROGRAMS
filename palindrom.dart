void main() {
  var num = 15467;
  var rem, rev, i, Num;
  var sum = 0;
  while (num > 0) {
    rem = num % 10;
    rev = sum * 10 + rem;
    Num = num / 10;
    i++;
    print(rev);
  }
  if (num == rev) {
    print("num ${num}  is palindrom");
  }
}
