

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

import '../controller/product_controller.dart';
import '../model/product_model.dart';

class BagProduct extends StatelessWidget {
   BagProduct({Key? key, required this.product}) : super(key: key);
    ProductController controller = Get.find();
  final ProductModel product;

  @override
  Widget build(BuildContext context) => Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Card(
          color: Color.fromARGB(255, 221, 218, 191),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(product.image),
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(fontSize: 10.0),
                    ),
                    Row(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${product.price}"),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700]!,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700]!,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 113, 113, 113),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LikeButton(
                        onTap: controller.onLikeButtonTapped,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}