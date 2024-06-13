import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/models/models.dart';

class ProductService extends ChangeNotifier {
  final String _baseUrl = 'https://varios-975e0-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  //TODO: fetch products
}
