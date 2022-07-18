import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import '../productview.dart';

class HomePage extends StatelessWidget {
  ProductController controller = Get.find();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Obx(() {
        // if (controller.isLoading.value) {
        //   return const Center(child: CircularProgressIndicator());
        // } else {
        //   return GridView.builder(
        //     itemCount: controller.productList.length,
        //     itemBuilder: (ctx, index) {
        //       return Container(
        //         child: ProductView(
        //           image: controller.productList.value[index].image,
        //           title: controller.productList.value[index].title,
        //           price: controller.productList.value[index].price,
        //           category: controller.productList.value[index].category,
        //         ),
        //       );
        //     },
        //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //       maxCrossAxisExtent: 200,
        //       mainAxisExtent: 300,
        //     ),
        //   );
        //}
        return GridView.builder(
          itemCount: controller.productList.length,
          itemBuilder: (ctx, index) {
            return Container(
              child: ProductView(
                product: controller.productList[index],
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 310,
          ),
        );
      });
}
