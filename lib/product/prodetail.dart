import 'package:flip/model/promodel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  ProductDetails({super.key, required this.products});

  ProModel products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: NetworkImage(products.image!)),
          Text(products.name!),
          Text(products.price!)
        ],
      ),
    );
  }
}
