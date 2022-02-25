// ask the user for a long string containing multiple words. Print back to the user the same string,
// except with the words in backwards order.
import 'dart:io';

void main() {
  print("enter the string value");
  String value = stdin.readLineSync()!;
  expectedString(value);
}

void expectedString(String value) {
  String reversedValue = value.split('').reversed.join('');
  print(reversedValue);
}
