import 'package:get/get.dart';
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
        page: () => const ProductDetailsView())
  ];
}