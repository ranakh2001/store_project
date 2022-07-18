import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_s/model/product_model.dart';

import 'product_controller.dart';

class SearchController extends GetxController {
  var category = "".obs;
  var categoryList = <ProductModel>[].obs;
  ProductController pcontroller = Get.put(ProductController());
  var categoryTitle = "".obs;
  var searchFeildController = TextEditingController();
  void openPage(String c, String title) {
    category.value = c;
    categoryTitle.value = title;
    for (var i = 0; i < pcontroller.productList.value.length; i++) {
      if (c == pcontroller.productList.value[i].category) {
        categoryList.add(pcontroller.productList.value[i]);
      }
    }
    Get.toNamed('/search_by_category');
  }

  void emptyList() {
    categoryList.value = [];
  }
}
