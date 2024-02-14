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
      body: Center(
        child: Column(
          children: [
            Text('Product Name'),
            // Image(image: AssetImage(products[0]['imageUrl'].toString())),
            Spacer(flex: 2,),

            //footer
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(33),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                children: [
                  Text('Price'),
                  SizedBox(height: 22,),
                  Text('Size'),
                  SizedBox(height: 33,),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Add to Cart'),
                  )
                ],
              ),
            )

          ],

        ),
      ),
    );
  }
}
