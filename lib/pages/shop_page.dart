import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/components/shoe_tile.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(BuildContext context,Shoe shoe) {
      Provider.of<Cart>(context, listen: false).addItem(shoe);
      showDialog(context: context, builder: (context) => const AlertDialog(
        title: Text("Succesfully added"),
        content: Text("Check your cart"),
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Search"), Icon(Icons.search)],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Everyone flies.. some fly longer than others",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Hot Picks🔥",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Text("see all",
                          style: TextStyle(color: Colors.blue, fontSize: 20))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getShoeList()[index];
                          return ShoeTile(
                            shoe: shoe,
                            onTap:() => addShoeToCart(context,shoe),
                          );
                        }))
              ],
            ));
  }
}
