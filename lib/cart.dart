import 'package:ecommerce_app/global_shop_data.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Text'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          var item = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item['imageUrl'].toString()),
              // radius: 100,
            ),
            title: Text(item['title'].toString()),
            subtitle:Text(item['company'].toString()),
            trailing: IconButton(
              onPressed: (){},
              icon:const  Icon(Icons.delete,color: Colors.red,),
            ),
          );
        },
      ),
    );
  }
}
