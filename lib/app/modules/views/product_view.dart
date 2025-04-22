import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/modules/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GetX Demo"),
          centerTitle: true,
          backgroundColor: Colors.teal[300],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: const Text('Product List: ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            Obx(
              () {
                return Expanded(
                  child: ListView.builder(
                    itemCount: productController.products.length,
                    itemBuilder: (context, index) {
                      final product = productController.products[index];
                      const Divider();
                      return ListTile(
                        title: Text(product.name),
                        subtitle: Text('\$${product.price}'),
                        onTap: () {
                          Get.toNamed('/product-details', arguments: product);
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ));
  }
}
