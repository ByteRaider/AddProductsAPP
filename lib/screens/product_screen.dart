import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            ), // ENS STACK
            // PRODUCT FORM
            const _ProductForm(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  const _ProductForm();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: _buildBoxDecoration(),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    );
  }
}
