// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

class ProductModel {
    ProductModel({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.category,
        required this.image,
        required this.rating,
    });

    int id;
    String title;
    double price;
    String description;
    String category;
    String image;
    Rating rating;

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: categoryValues.map[json["category"]].toString(),
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
    );

}

enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

final categoryValues = EnumValues({
    "electronics": Category.ELECTRONICS,
    "jewelery": Category.JEWELERY,
    "men's clothing": Category.MEN_S_CLOTHING,
    "women's clothing": Category.WOMEN_S_CLOTHING
});

class Rating {
    Rating({
        required this.rate,
        required this.count,
    });

    double rate;
    int count;

    factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String>? get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
