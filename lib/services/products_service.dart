import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/models/models.dart';
import 'package:http/http.dart' as http;

class ProductsService extends ChangeNotifier {
  final String _baseURL =
      'flutter-varios-curso-8bbb3-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  bool isLoading = true;

  ProductsService() {
    loadProducts();
  }

  //TODO: FETCH PRODUCTS
  Future<List<Product>> loadProducts() async {
    final url = Uri.https(_baseURL, 'products.json');
    final resp = await http.get(url);
    final Map<String, dynamic> productsMap = json.decode(resp.body);

    productsMap.forEach((key, value) {
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      products.add(tempProduct);
    });
    print(products[0].name);
    //isLoading = false;
    //notifyListeners();
    return products;
  }
}
