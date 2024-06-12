import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        decoration: _cardShape(),
        // Use child widget that contains the content of the card
        //child: this.child,
        child: const Stack(
            // Stack widget allows you to place multiple widgets on top of each other
            alignment: Alignment.bottomLeft,
            children: [
              // List of widgets
              _BackgroundImage(), //
              _ProductDetails()
            ]),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.red,
    );
  }
}

BoxDecoration _cardShape() => const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.05),
        borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
        ]);

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: Color.fromRGBO(255, 255, 255, 0.05),
        ),
        child: FadeInImage(
          placeholder: const AssetImage('assets/img/loading.gif'),
          image: const AssetImage('assets/img/no-image.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
