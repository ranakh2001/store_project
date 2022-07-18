// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store_s/controller/product_controller.dart';

import '../controller/search_controller.dart';

class CategoryButton extends StatelessWidget {
  SearchController scontroller = Get.find();
  ProductController pcontroller = Get.find();
  String icon;
  String category;
  String title;
   CategoryButton({
    Key? key,
    required this.icon,
    required this.category,
    required this.title,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) => Container(
      width: 200,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
          primary: const Color.fromARGB(255, 248, 238, 152),
        ),
        onPressed: () {
          scontroller.openPage(category,title);
        },
        icon: Image.asset(
          icon,
          width: 50,
          height: 50,
        ),
        label: Text(
          title,
          style: const TextStyle(fontSize: 10, color: Colors.black),
        ),
      ));
}
