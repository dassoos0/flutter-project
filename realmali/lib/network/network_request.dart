import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:realmali/models/item.dart';

class NetworkRequest {
  static const String url = 'http://10.0.2.2:3000/item';

  static List<Item> parseItems(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Item> items = list.map((model) => Item.fromJson(model)).toList();
    return items;
  }

  static Future<List<Item>> fetchItems() async {
    final response = await http.get('$url');
    if (response.statusCode == 200) {
      return compute(parseItems, response.body);
    } else {
      throw Exception('Can\'t get photos');
    }
  }
}
