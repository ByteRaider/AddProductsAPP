import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/widgets/auth_background.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, superkey});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250),
              CardContainer(
                  child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  //_LoginForm(),
                ],
              )),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
