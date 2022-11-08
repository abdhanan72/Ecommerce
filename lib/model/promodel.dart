// To parse this JSON data, do
//
//     final proModel = proModelFromJson(jsonString);

import 'dart:convert';

ProModel proModelFromJson(String str) => ProModel.fromJson(json.decode(str));

String proModelToJson(ProModel data) => json.encode(data.toJson());

class ProModel {
    ProModel({
        this.image,
        this.name,
        this.price,
    });

    String? image;
    String? name;
    String? price;

    factory ProModel.fromJson(Map<String, dynamic> json) => ProModel(
        image: json["image"],
        name: json["name"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "price": price,
    };
}
