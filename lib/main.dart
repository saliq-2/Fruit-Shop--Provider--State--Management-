import 'package:flutter/material.dart';
import 'package:fruitshop/models/notifier_class.dart';
import 'package:fruitshop/pages/shop_page.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(myapp());
}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>notifier_class())
      ],
      child: MaterialApp(

        home:shop_page() ,
      ),
    );
  }
}
