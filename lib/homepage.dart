import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> filters = ['all', 'nike', 'adidas', 'lotto','bata','walker'];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12),
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
                    return  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Chip(
                        label: Text(filter),
                        backgroundColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Colors.green,
                          )
                        )
                        // elevation: 2,
                      ),
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
