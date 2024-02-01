import 'package:get/get.dart';
import 'package:getx_app/screen/home/model/product_model.dart';
import 'package:getx_app/utils/api_helper.dart';

class HomeController extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[].obs;
  RxList<ProductModel> cartList = <ProductModel>[].obs;

  Future<void> getProductData() async {
    List<ProductModel>? list = await ApiHelper.helper.getProductApi();
    if (list != null) {
      productList.value = list;
    }
  }
}
