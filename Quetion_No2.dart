import 'dart:io';

void main() {
  stdout.write("size of the square: ");
  int value = int.parse(stdin.readLineSync()!); //3

  drawBoard(value); //function calling
}

void drawBoard(int value) {
  String row = " ---";
  String col = " |  ";

  for (var i = 0; i < value; i++) {
    print("${row * value}\n"); //print 3 rows --- --- ---
    print(col * (value + 1)); //prints 4 straight line | | | |
  }

  print("${row * value}\n");
}
