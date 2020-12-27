class pizza {
  static List<String> sizes = <String>["Small","Medium","Large"];

  String size = sizes.elementAt(0);

  Map<String, bool> toppings = new Map<String,bool>();

  pizza() {
    toppings.putIfAbsent('Mighty Meat', () => false);
    toppings.putIfAbsent('Chicken Deluxe', () => false);
    toppings.putIfAbsent('Double Pepperoni', () => false);
    toppings.putIfAbsent('Super Deluxe', () => false);
    toppings.putIfAbsent('Seafood Deluxe', () => false);
    toppings.putIfAbsent('Seafood Cocktail', () => false);
    toppings.putIfAbsent('Super Seafood', () => false);
    toppings.putIfAbsent('Meat Deluxe', () => false);
    toppings.putIfAbsent('Shrimp Cocktail', () => false);
    toppings.putIfAbsent('Classic Mushroom & Tomato', () => false);
    toppings.putIfAbsent('Tom Yum Kung', () => false);
    toppings.putIfAbsent('Hawaiian', () => false);
  }
}