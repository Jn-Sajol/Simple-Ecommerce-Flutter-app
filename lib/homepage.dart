import 'package:ecommerce_app/global_shop_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = ['all', 'nike', 'adidas', 'lotto','bata','walker'];
   late var initialState = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:const EdgeInsets.all(12),
        child: Scaffold(
          body: Column(
            children: [
              const Row(
                // mainAxisAlignment = MainAxisAlignment.start,
                children: [
                  //app logo
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: Text(
                        'Shoe \n BestShop',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),

                  //search field
                  Expanded(
                    child: TextField(
                      // expands: true,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              // borderRadius = const BorderRadius.all(Radius.circular(4.0))
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)))),
                    ),
                  ),
                ],
              ),
              //Start Filtering Section
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                    itemBuilder:(context,index){
                    final filter = filters[index];
                    // print(filter);
                    return  GestureDetector(
                      onTap: (){
                        setState(() {
                          initialState = index;
                        });
                        // print(filter);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Chip(
                          label: Text(filter),
                          backgroundColor: initialState == index ?Colors.amberAccent:Colors.black26,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: Colors.green,
                            )
                          )
                          // elevation: 2,
                        ),
                      ),
                    );
                    },
                ),
              ),
              //Main Products segment
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                    itemBuilder: (context,index){
                    final product = products[index];
                    // return print(product);
                      return Chip(
                        label: Text(product['title'].toString()),
                      );
                    },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
