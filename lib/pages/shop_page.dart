import 'package:flutter/material.dart';
import 'package:fruitshop/models/notifier_class.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';

class shop_page extends StatelessWidget
{





  @override
  Widget build(BuildContext context) {
    return Consumer<notifier_class>(
      builder: (context,notifermodel,child)=>
       Scaffold(
         floatingActionButton: FloatingActionButton(onPressed: (){

           Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));

         },child: Icon(Icons.shopping_bag),),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Good Morning"),
            ),
           // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lets Order Some frsh Items for your BreakFast",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Text("Fresh Items",style: TextStyle(fontSize: 19),),
            ),

            SizedBox(height: 30,),

            Expanded(

              child: GridView.builder(
                //scrollDirection: Axis.horizontal,
                    itemCount: 4,
                  itemBuilder: (context,index)=>
                      Container(

                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(

                                height: 200,width: 200,
                                color: Colors.blue,
                                child: Column(
                                  children: [
                                    Image.asset(notifermodel.fruits[index].imagePath,height: 100,),
                                    Text(notifermodel.fruits[index].name),
                                    Text(notifermodel.fruits[index].price),
                                    ElevatedButton(onPressed: ()
                                    {//Gives instance of the list if .price is placed is placed it gives the properties

                                  //  print(notifermodel.fruits[index]);/
                                      notifermodel.addToCart(notifermodel.fruits[index]);


                                    }, child: Text("Add to Cart"),style: ElevatedButton.styleFrom(primary: Colors.brown),),
                                  ],
                                ),




                              ),
                            )
                          ],
                        ),
                      ), gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,

              ) ,
              ),
            )
          ],
        ),
      ),
    );

  }
}