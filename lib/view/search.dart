import 'package:flutter/material.dart';

import 'categoryButton.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
        child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 50,
        mainAxisSpacing: 50,
      ),
      children: [
        CategoryButton(icon: "assets/images/dress_icon.png", category: "Category.WOMEN_S_CLOTHING", title: "women's clothing",),
        CategoryButton(icon:"assets/images/men_clothes.png",category: "Category.MEN_S_CLOTHING",title: "men's clothing",),
        CategoryButton(icon:"assets/images/jewellery.png",category: "Category.JEWELERY",title: "jewelery",),
        CategoryButton(icon:"assets/images/electronic.png",category: "Category.ELECTRONICS",title: "electronics",),
        
      ],
    ));
  }
}
