import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Scrollable widget
        child: Column(
          // Column widget
          children: [
            // List of widgets
            Stack(
              // Stack allows you to place multiple widgets on top of each other
              children: [
                const ProductImage(), // product image
                Positioned(
                  left: 20,
                  top: 60,
                  child: IconButton(
                    // GoBack button
                    onPressed: () => Navigator.of(context).pop(), // go back
                    //onPressed: () =>  Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 60,
                  child: IconButton(
                    // Camera or gallery button
                    onPressed: () {
                      //TODO: CAMERA OR GALLERY FUNCTION
                    },
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
