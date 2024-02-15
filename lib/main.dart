
import 'package:ecommerce_app/homepage.dart';
import 'package:ecommerce_app/initialPage.dart';
import 'package:ecommerce_app/product_details.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: InitialPage(),
    );
  }
}
