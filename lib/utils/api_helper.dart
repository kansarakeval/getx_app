import 'dart:convert';

import 'package:getx_app/screen/home/model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static ApiHelper helper = ApiHelper._();

  ApiHelper._();

  Future<List<ProductModel>?> getProductApi() async {
    String link = "https://fakestoreapi.com/products";

    var response = await http.get(Uri.parse(link));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<ProductModel> productList =
          json.map((e) => ProductModel.mapToModel(e)).toList();

      return productList;
    }
    return null;
  }
}
