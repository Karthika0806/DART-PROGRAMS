void main() {
  var List = [1, 2, 3, 4];
  //to find a even number by usingwhere function
  var even = List.where((value) => value % 2 == 0);
  print(even);
  //to find a odd number by using function
  var odd = List.where((value) => value % 2 != 0);
  print(odd);
  //in firstwhere method is used to find and filter the collection if the value is available
  //in respected list it ahows value orelse annonimous value will be printed.
  var value = List.firstWhere((values) => values == 2, orElse: () => -1);
  print(value);
}
