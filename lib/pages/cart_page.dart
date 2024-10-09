import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/components/cart_item.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("My Cart",style: TextStyle(fontSize: 30),),
                ),
                const SizedBox(width: 10),
                Expanded(child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Shoe individualshoe = value.userCart[index];
                    return CartItem(
                      shoe: individualshoe,
                    );
                  },
                ))
              ],
            ));
  }
}
