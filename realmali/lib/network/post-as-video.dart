import 'dart:convert';

ItemForCart itemForCartFromJson(String str) =>
    ItemForCart.fromJson(json.decode(str));

String itemForCartToJson(ItemForCart data) => json.encode(data.toJson());

class ItemForCart {
  ItemForCart({
    this.name,
    this.imageUrl,
    this.price,
  });

  String name;
  String imageUrl;
  int price;

  factory ItemForCart.fromJson(Map<String, dynamic> json) => ItemForCart(
        name: json["name"],
        imageUrl: json["imageUrl"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "price": price,
      };
}
