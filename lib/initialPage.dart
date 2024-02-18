import 'package:ecommerce_app/cart.dart';
import 'package:ecommerce_app/homepage.dart';
import 'package:flutter/material.dart';

class InitialPage  extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List<Widget> item = const [HomePage(),Cart()];
  var current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  IndexedStack(
        index: current,
        children:item,
      ),
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: current,
        onTap: (value){
           setState(() {
             current = value;
           });
        },
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: '',
          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
            label: '',
          )
        ],
      )
    );
  }
}
