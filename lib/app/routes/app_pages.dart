import 'package:get/get.dart';
import 'package:getx_demo/app/bindings/product_binding.dart';
import 'package:getx_demo/app/modules/views/cart_view.dart';
import 'package:getx_demo/app/modules/views/product_details_view.dart';
import 'package:getx_demo/app/modules/views/product_view.dart';
import 'package:getx_demo/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.Product,
        page: () => ProductView(),
      binding: ProductBinding()
    ),
    GetPage(
        name: Routes.ProductDetails,
        page: () => ProductDetailsView(),
      transition: Transition.circularReveal,
      binding: ProductBinding()
    ),
    GetPage(
        name: Routes.Cart,
        page: () => CartView()
    )
  ];
}