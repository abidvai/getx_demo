
import 'package:get/get.dart';
import 'package:getx_demo/app/modules/controllers/cart_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductBinding());
    Get.lazyPut<CartController>(() => CartController());
  }

}