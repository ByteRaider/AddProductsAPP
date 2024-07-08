import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/models/models.dart';
import 'package:http/http.dart' as http;

class ProductService extends ChangeNotifier {
  final String _baseUrl = 'varios-975e0-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  bool isLoading = true;

  ProductService() {
    loadProducts();
  }

  // <List<Product>>
  Future loadProducts() async {
    final url = Uri.https(_baseUrl, 'products.json');
    final resp = await http.get(url);
    final Map<String, dynamic> productsMap = json.decode(resp.body);
    productsMap.forEach(
      (key, value) {
        final tempProduct = Product.fromJson(value);
        tempProduct.id = key;
        this.products.add(tempProduct);
      },
    );
    print(this.products[0]);
  }
}
