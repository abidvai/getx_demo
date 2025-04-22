import 'package:get/get.dart';
import 'package:getx_demo/app/modules/controllers/cart_controller.dart';
import 'package:getx_demo/app/modules/views/cart_view.dart';
import 'package:getx_demo/app/modules/views/product_details_view.dart';
import 'package:getx_demo/app/modules/views/product_view.dart';
import 'package:getx_demo/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.Product,
        page: () => ProductView(),
    ),
    GetPage(
        name: Routes.ProductDetails,
        page: () => ProductDetailsView(),
      transition: Transition.circularReveal,
      binding: BindingsBuilder(() {
        Get.lazyPut<CartController>(() => CartController());
      })
    ),
    GetPage(
        name: Routes.Cart,
        page: () => CartView()
    )
  ];
}