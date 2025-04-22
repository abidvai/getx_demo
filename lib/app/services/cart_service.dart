
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/app/modules/models/product_model.dart';

class CartServices extends GetxService {
  final storage = GetStorage();
  var cartItem = <ProductModel>[].obs;


}