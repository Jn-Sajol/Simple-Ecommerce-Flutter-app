import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 44),
        child: Scaffold(
            body: Column(
          children: [
            Row(
              // mainAxisAlignment = MainAxisAlignment.start,
              children: [
                //app logo
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Shoe \n BestShop',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25),),
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
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12))
                      )
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
