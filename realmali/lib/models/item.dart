class Item {
  int id;
  String category;
  int price;
  String name;
  String imageUrl;
  String description;
  int quantity = 1;
  // List<String> tastes = [];
  // List<String> sizes = [];

  //i did add the @required below
  Item(
      {this.id,
      this.category,
      this.price,
      this.name,
      this.imageUrl,
      this.description,
      this.quantity
      // this.tastes,
      // this.sizes
      });

  Item.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    price = json['price'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    description = json['description'];
    // tastes = json['tastes'];
    // sizes = json['sizes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['price'] = this.price;
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    data['description'] = this.description;
    // data['tastes'] = this.tastes;
    // data['sizes'] = this.sizes;
    return data;
  }
}
