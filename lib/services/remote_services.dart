import 'package:http/http.dart' as http;

import '../model/product_model.dart';

class RemoteServices {
  static var client = http.Client();
  static Future<List<ProductModel>?> fetchdata() async {
    var respons = await client.get(Uri.parse('https://fakestoreapi.com/products'));
    if (respons.statusCode == 200) {
      var jsonString = respons.body;
      return productModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
