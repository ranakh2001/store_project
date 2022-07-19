
import 'package:get/get.dart';

import '../model/product_model.dart';
import '../services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <ProductModel>[].obs;
  var isLoading = true.obs;
  var bagItem = <ProductModel>[].obs;

  @override
  void onInit() {
    featchData();
    super.onInit();
  }

  void featchData() async {
    isLoading(true);
    try {
      var data = await RemoteServices.fetchdata();
      if (data != null) {
        productList.value = data;
      }
    } finally {
      isLoading(false);
    }
  }

  void addToBag(ProductModel product) {
    bagItem.value.add(product);
  }



  Future<bool>  onLikeButtonTapped(bool isLiked, ProductModel product) async {
    // todo: add/remove product from liked list
    return !isLiked;
  }
  
}
