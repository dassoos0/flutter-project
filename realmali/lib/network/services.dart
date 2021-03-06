import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:realmali/models/item.dart';

class NetworkRequest {
  List<Item> _items = [];
  static const String url = 'http://10.0.2.2:3000/cart';

  static List<Item> parseItems(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Item> _items = list.map((model) => Item.fromJson(model)).toList();
    return _items;
  }

  int get itemCount {
    return _items.length;
  }

  static Future<List<Item>> fetchCartItems() async {
    final response = await http.get('$url');
    if (response.statusCode == 200) {
      return compute(parseItems, response.body);
    } else {
      throw Exception('Can\'t get items');
    }
  }
}
