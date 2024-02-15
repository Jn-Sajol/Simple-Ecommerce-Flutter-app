import 'package:ecommerce_app/global_shop_data.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
   const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // final String productImage = products[0]['imageUrl'];
   final List<String> size = ['23','45','32','53','34'];

   var initialValue = 0;

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
           const  Text('Product Name'),
            // Image(image: AssetImage(products[0]['imageUrl'].toString())),
            Spacer(flex: 2,),

            //footer
            Container(
              height: 250,
              width: double.infinity,
              padding:const  EdgeInsets.all(22),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                children: [
                  const Text('Price',style: TextStyle(fontSize: 22),),
                  // const SizedBox(height: 12,),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: size.length,
                        itemBuilder: (context,index){
                        var sise = size[index];
                        return
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Chip(
                              // labelPadding: EdgeInsets.all(11),
                              backgroundColor: initialValue == index ? Colors.amberAccent:Colors.green,
                              label: Text(sise),
                            ),
                          ),
                          onTap: (){
                            setState((){
                              initialValue = index;
                            });
                          },

                        );
                        }
                    ),
                  ),
                  // const SizedBox(height: 13,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50)
                      ),
                      onPressed: (){
                      },
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
