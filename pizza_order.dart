void main() {
  var pizzaOrder = {
    'margherita': 2.5,
    'pepperoni': 5.8,
    'vegetarian': 4.5,
  };

  const Order = ['margeherita' 'pepperoni'];
  var total = 0.0;
  for (var items in Order) {
    final prize = pizzaOrder[items];
    if (prize != null) {
      var Total = total + prize;
      print('the total is:$Total');
    } else {
      print("pizza is not in the menu");
    }
  }
}
