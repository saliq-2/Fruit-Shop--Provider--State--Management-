import 'package:flutter/material.dart';
import 'package:fruitshop/models/notifier_class.dart';
import 'package:provider/provider.dart';

class cart extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<notifier_class>(
      builder: (context,notifier_class_acceser,child)
      => Scaffold(
        body: ListView.builder(

            itemCount: notifier_class_acceser.user_cart.length,
            itemBuilder: (context,index)=>

        ListTile(
          leading: Image.asset(notifier_class_acceser.user_cart[index].imagePath),
          title: Text(notifier_class_acceser.user_cart[index].name),
          subtitle: Text(notifier_class_acceser.user_cart[index].price),
          trailing: IconButton(onPressed: (){

            notifier_class_acceser.removeFromCart(notifier_class_acceser.user_cart[index]);
          },icon: Icon(Icons.delete),),
        )
        ) ,
      ),
    );
  }
}