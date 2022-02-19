import 'dart:io';

void main(){
  var num1=150;
  var num2=200;
  print("select the operations what you wanted to do? (+/-/*/ % or /)");
  String? sign=stdin.readLineSync();
if(sign=='+'){
  print(num1+num2);
}
else if(sign=="-"){
  print(num1-num2);

}
else if(sign=='*'){
  print(num1*num2);
}
else if(sign=='%'){
  print(num1%num2);
}
else{
  print("invalid operation:");
}

}