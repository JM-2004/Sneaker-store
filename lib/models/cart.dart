import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan1",
        price: "236",
        imagePath: 'lib/images/1.jpeg',
        description: 'really cool shoe'),
    Shoe(
        name: "Air Jordan2",
        price: "334",
        imagePath: 'lib/images/2.jpeg',
        description: 'really cool shoe'),
    Shoe(
        name: "Air Jordan3",
        price: "445",
        imagePath: 'lib/images/3.jpeg',
        description: 'really cool shoe'),
    Shoe(
        name: "Air Jordan4",
        price: "557",
        imagePath: 'lib/images/4.jpeg',
        description: 'really cool shoe'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getUserCart() {
    return userCart;
  }

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
