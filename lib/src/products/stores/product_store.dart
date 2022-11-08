import 'package:flutter/material.dart';
import 'package:value_notifier/src/products/models/product_model.dart';
import 'package:value_notifier/src/products/services/products_service.dart';

class ProductStore extends ValueNotifier<List<ProductModel>> {
  final ProductsService service;

  ProductStore(this.service) : super([]);

  Future fetchProducts() async {
    final products = await service.fetchProducts();
    value = products;
  }
}
