import 'package:ecommerce_app/global_shop_data.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  // final String productImage = products[0]['imageUrl'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.keyboard_return_outlined)),
          )
        ],
        title:const Text('Product Details'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Product Name'),
          Image(image: AssetImage(products[0]['imageUrl'].toString()))

          //footer

        ],

      ),
    );
  }
}
