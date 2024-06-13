import 'dart:convert';

class Products {
  Cheeseburger cheeseburger;
  Cheeseburger torta;

  Products({
    required this.cheeseburger,
    required this.torta,
  });

  factory Products.fromRawJson(String str) =>
      Products.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        cheeseburger: Cheeseburger.fromJson(json["cheeseburger"]),
        torta: Cheeseburger.fromJson(json["torta"]),
      );

  Map<String, dynamic> toJson() => {
        "cheeseburger": cheeseburger.toJson(),
        "torta": torta.toJson(),
      };
}

class Cheeseburger {
  bool available;
  String name;
  String? picture;
  double price;

  Cheeseburger({
    required this.available,
    required this.name,
    this.picture,
    required this.price,
  });

  factory Cheeseburger.fromRawJson(String str) =>
      Cheeseburger.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cheeseburger.fromJson(Map<String, dynamic> json) => Cheeseburger(
        available: json["available"],
        name: json["name"],
        picture: json["picture"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "name": name,
        "picture": picture,
        "price": price,
      };
}
