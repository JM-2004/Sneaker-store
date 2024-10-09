// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //pic
          ClipRRect(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(shoe.imagePath),
              ),
              borderRadius: BorderRadius.circular(12)),

          //desc
          Text(
            shoe.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
          Text(shoe.description),

          //price and cart

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$' + shoe.price,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 200,
                ),
                GestureDetector(
                  onTap:onTap,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
/*
          const Divider(
          color: Colors.red,       // Set the color to red
          thickness: 2,            // Adjust the thickness to make it more visible
          indent: 16,              // Add padding to the left of the divider
          endIndent: 16,           // Add padding to the right of the divider
          ),
*/
        ],
      ),
    );
  }
}
