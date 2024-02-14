import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String image;

  const ProductCard(
      {super.key, required this.productName, required this.productPrice, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(13),
        margin: EdgeInsets.all(12),
        width: double.infinity,
        // height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          color: Color.fromRGBO(135, 235, 250, 100),

        ),
        child: Column(

          children: [
            // Align(
            //      alignment = Alignment.center,
            //     child: Text('product name: ${product['title']}'),
            // )
            Text(productName),
            Text(productPrice),
            SizedBox(height: 12,),
            Image(image: NetworkImage(image), height: 175,),
          ],
        )
    );
  }
}
