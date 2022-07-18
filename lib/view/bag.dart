import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import 'bag_product.dart';

class Bag extends StatelessWidget {
  Bag({Key? key}) : super(key: key);
  ProductController controller = Get.find();
  @override
  Widget build(BuildContext context) => Obx(() {
        return GridView.builder(
          itemCount: controller.bagItem.length,
          itemBuilder: (ctx, index) {
            return Container(
              child: BagProduct(
                product: controller.bagItem.value[index],
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 300,
          ),
        );
      });
}
