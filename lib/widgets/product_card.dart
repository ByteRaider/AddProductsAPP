import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 400,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        color: Colors.red,
        //decoration: _cardShape(),
        // Use child widget that contains the content of the card
        //child: this.child,
      ),
    );
  }
}
