
void main() {
  List fruits = [
    {"name": "Apple",
      "color": "Red",
      "price": 2.5,
    },
    {
      "name": "Banana",
      "color": "Yellow",
      "price": 1.0,
    },
    {
      "name": "Grapes",
      "color": "Purple",
      "price": 3.0,
    }
  ];
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10.0);
}

void applyPriceDiscount(List fruits, double discount) {
  print("Fruit Details After Applying $discount% Discount:");
  for(var fruit in fruits) {
    double actualAmount = fruit['price'];
    double amountAfterDiscount = actualAmount - calculateDiscount(actualAmount, discount);
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$$amountAfterDiscount");
  }
}

// calculate discount
double calculateDiscount(double actualAmount, double discount) {
  return (discount*actualAmount)/100.0;
}

void displayFruitDetails(List fruits) {
  print("Original Fruit Details before Discount:");
  for(var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}