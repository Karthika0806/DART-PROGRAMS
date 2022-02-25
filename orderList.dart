void main() {
  List<Map<String, dynamic>> shopingList = [
    {'name': 'pants', 'price': 150},
    {'name': 'shoes', 'price': 100},
    {'name': 'watch', 'price': 1200},
    {'name': 'bags', 'price': 175},
  ];
  shopingList.sort((a, b) => a['price'].compareTo(b['price']));
  print('low to hige price:$shopingList');
  shopingList.sort((a, b) => b['price'].compareTO(a['price']));
  print('high to low price:$shopingList');
}
