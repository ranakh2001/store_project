import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_s/productview.dart';
import '../controller/product_controller.dart';
import '../controller/search_controller.dart';

class SearchByCategory extends StatelessWidget {
  SearchByCategory({Key? key}) : super(key: key);
  SearchController scontroller = Get.find();
  ProductController pcontroller = Get.find();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                scontroller.emptyList();
                Get.back();
              },
              icon:const Icon(Icons.arrow_back,color: Colors.black,)),
          title: Text(scontroller.categoryTitle.value,style:const TextStyle(color: Colors.black),),
        ),
        body: Builder(builder: (context) {
          if (scontroller.categoryList.isNotEmpty) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 310,
                ),
                itemCount: scontroller.categoryList.length,
                itemBuilder: (ctx, index) {
                  return ProductView(
                      product: scontroller.categoryList.value[index]);
                });
          } else {
            return const Center(
              child: Text(
                "No Item Founded!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        }),
      );
}
