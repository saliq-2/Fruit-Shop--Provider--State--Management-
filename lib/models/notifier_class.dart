import 'package:flutter/material.dart';
import 'package:fruitshop/models/fruit_properties.dart';

class notifier_class extends ChangeNotifier
{
    List<fruit_properties> fruits=
    [
      fruit_properties(name: "Apple", imagePath: "assets/images/apple.png", price: "\$1.32"),
      fruit_properties(name: "Avocado", imagePath: "assets/images/avocado.png", price: "\$2.62"),
      fruit_properties(name: "Banana", imagePath: "assets/images/banana.png", price: "\$0.80"),
      fruit_properties(name: "Strawberry", imagePath: "assets/images/strawberry.png", price: "\$1.5"),
    ];
    List<fruit_properties> user_cart=[];
    List<fruit_properties> get _userCart=>user_cart;
    void addToCart(fruit_properties myfruit)
    {
      _userCart.add(myfruit);
      notifyListeners();

    }
    void removeFromCart(fruit_properties myfruit)
    {
      _userCart.remove(myfruit);
      notifyListeners();
    }

}