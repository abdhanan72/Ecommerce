import 'package:flip/product/prodetail.dart';
import 'package:flutter/material.dart';

import '../model/promodel.dart';

// ignore: must_be_immutable
class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});
  

  List<ProModel> product = [
    ProModel(
        image:
            'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQLXNIX2hC7wDyws-lg2dscdKdZixvhKNRNZFA5uNHppnk-4EvNqRoMQVjbqfgiKaQZzUaW-4T3uWeayhVEJQ-Au57esYZKReFyRU8ZAX772-EWnTzcqXP7Ujt7cj0&usqp=CAE',
        name: 'RTX 3060ti',
        price: '1500\$'),
    ProModel(
        image:
            'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTlezTxCF8MfrAvcrXF_THJh9sOOnu1Xim1YbVBoKCj7ehe64_vtXUDiWrNJclqtop-yGUF13MNA0zo7Qedpg7WSHCKvvT2zQ-hHTRLNf7dWK9gn9aLsHGFtqht11r_&usqp=CAE',
        name: 'RTX 3070ti',
        price: '2400\$'),
    ProModel(
        image:
            'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRD_Mm6xOifvkrCkXRRm7lFqj646oIIbwo5YjbzteTfY3s4Fe9CTXqQx819UcvUFnQFXqYXyushLqFQhNLYc-npfSXV8-WjstqJU_WCoKxqUDk00iVVHcWCpxd1WQRy&usqp=CAE',
        name: 'RTX3060',
        price: '1200\$'),
    ProModel(
        image:
            'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT7yxY03U8SBmJlHmw6jddVPF344b-OkZ1N0v9jDhzVvHHnGBxmHkbqow08IS9UjjgC5I4FofGb7nOwjMOZ6-6hibI5b_nO_yfsgK1YtqY-V9NI8JO4ld4mnQygW4iF&usqp=CAE',
        name: 'RX6400',
        price: '1000\$')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 10,
          mainAxisExtent: 250,
        ),
        itemCount: product.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap:() =>Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductDetails(products: product[index]))),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff63594d),
              ),
              child: Column(children: [
                Image.network(
                  "${product.elementAt(index).image}",
                  height: 180,
                  width: 150,
                  fit: BoxFit.contain,
                ),
                Text("${product.elementAt(index).name}"),
                Text("${product.elementAt(index).price}"),
                const Padding(
                  padding: EdgeInsets.only(left: 90.0),
                  child: Icon(Icons.favorite_border),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
