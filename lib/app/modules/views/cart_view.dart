import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/modules/controllers/cart_controller.dart';

class CartView extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartController.cartItems[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text('\$${item.price}'),
                      trailing: IconButton(
                        onPressed: () {
                          cartController.removeToCart(item);
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total: \$${cartController.totalAmount.value.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24),
              ),
            );
          })
        ],
      ),
    );
  }
}
