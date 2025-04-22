import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/modules/models/product_model.dart';

class ProductController extends GetxController{
  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    products.addAll([
      ProductModel(name: 'Mobile', price: 29.99),
      ProductModel(name: 'Laptop', price: 50.99),
      ProductModel(name: "Books", price: 12.99)
    ]);
    super.onInit();
  }
}