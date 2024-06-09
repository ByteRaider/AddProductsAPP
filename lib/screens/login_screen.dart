import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/widgets/auth_background.dart';

import '../widgets/widgets.dart';
import 'ui/input_decorations.dart';

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
                    _LoginForm(),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Create New Account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Form(
        //TODO: KEEP REFERENCE KEY
        autovalidateMode: AutovalidateMode.onUserInteraction,

        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'user@domain.com',
                labelText: 'E-mail',
                prefixIcon: Icons.alternate_email_rounded,
              ),
              validator: (value) {
                //email validation regular expression
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);
                return regExp.hasMatch(value ?? '') ? null : 'Invalid email';
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Enter a secure password',
                labelText: 'Password',
                prefixIcon: Icons.password_rounded,
              ),
              validator: (value) {
                //  if (value != null && value.length >= 6) return null;
                //  return 'Invalid password';
                return (value != null && value.length >= 6)
                    ? null
                    : 'Password must be at least 6 characters';
              },
            ),
            const SizedBox(height: 30),
            MaterialButton(
                onPressed: () {
                  //TODO: Login action
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                height: 50,
                minWidth: double.infinity,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text('Login'),
                )),
          ],
        ),
      ),
    );
  }
}
