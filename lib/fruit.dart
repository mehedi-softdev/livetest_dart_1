class Fruit {
  String _name;
  String _color;
  double _price;
  // constructor
  Fruit(this._name, this._color, this._price);
  // getters
  get name {
    return _name;
  }
  get color {
    return _color;
  }
  get price {
    return _price;
  }
}