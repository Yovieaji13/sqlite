class Item {
  int _id;
  String _name;
  int _price;
  int _stockin;
  int _stockout;

  int get id => _id;

  String get name => this._name;
  set name(String value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  get stockin => this._stockin;
 set stockin( value) => this._stockin = value;

  get stockout => this._stockout;
 set stockout( value) => this._stockout = value;

// konstruktor versi 1
  Item(this._name, this._price, this._stockin, this._stockout);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stockin = map['stockin'];
    this._stockout = map['stockout'];
  }
  
// konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['stockin'] = stockin;
    map['stockout'] = stockout;
    return map;
  }
}
