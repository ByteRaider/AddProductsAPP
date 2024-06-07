import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: double.infinity,
        height: 400,
        padding: const EdgeInsets.all(20),
        decoration: _cardShape(),
        // Use child widget that contains the content of the card
        child: this.child,
      ),
    );
  }
}

BoxDecoration _cardShape() => const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.05),
        borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
        ]);
