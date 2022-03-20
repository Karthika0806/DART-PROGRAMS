//Implement a function that takes as input three variables,
//and returns the largest of the three. Do this without using the Dart max() function!

void main() {
  values(45, 45, 45);
}

void values(int a, int b, int c) {
  if (a > b && a > c) {
    print('$a is greater');
  } else if (b > a && b > c) {
    print("$b is greater");
  } else if (c > a && c > b) {
    print("$c is greater");
  } else {
    print("no values found");
  }
}
