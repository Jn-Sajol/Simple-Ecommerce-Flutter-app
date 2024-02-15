import 'package:ecommerce_app/global_shop_data.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key,  required this.product });
  final Map<String, Object> product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // final String productImage = products[0]['imageUrl'];
  // final List<String> size = ['23', '45', '32', '53', '34'];

  var initialValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
               Text(widget.product['title'].toString()),
              SizedBox(height: 55,),
              Image(image: AssetImage(widget.product['imageUrl'].toString())),
              Spacer(
                flex: 1,
              ),

              //footer
              Container(
                height: 250,
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                     Text(
                      widget.product['price'].toString(),
                      style: TextStyle(fontSize: 22),
                    ),
                    // const SizedBox(height: 12,),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // itemCount: widget.product['sizes'] != null ? widget.product['sizes'].length : 0,
                          // itemCount: (widget.product['sizes'] ?? []).length,
                          itemCount: (widget.product['sizes'] as List<dynamic>?)?.length ?? 0,
                          itemBuilder: (context, index) {
                            // var sizes = widget.product['sizes'];
                            var size;
                              final List<dynamic>? sizes = widget.product['sizes'] as List<dynamic>?;
                              if (sizes != null && index >= 0 && index < sizes.length) {
                                size= sizes[index];
                              }
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  initialValue = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Chip(
                                  // labelPadding: EdgeInsets.all(11),
                                  backgroundColor: initialValue == index
                                      ? Colors.amberAccent
                                      : Colors.green,
                                  label: Text(size.toString()),
                                ),
                              ),
                            );
                          }),
                    ),
                    // const SizedBox(height: 13,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50)),
                      onPressed: () {},
                      child:const  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.card_travel),
                          SizedBox(width: 9,),
                          Text('Add TO CART'),
                        ],
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
