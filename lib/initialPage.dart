import 'package:ecommerce_app/cart.dart';
import 'package:ecommerce_app/homepage.dart';
import 'package:ecommerce_app/product_details.dart';
import 'package:flutter/material.dart';

class InitialPage  extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List<Widget> item = const [HomePage(),Cart()];
  var curent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  IndexedStack(
        index: curent,
        children:item,
      ),
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: curent,
        onTap: (value){
           setState(() {
             curent = value;
           });
        },
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: '',
          ),
         const  BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
            label: '',
          )
        ],
      )
    );
  }
}
