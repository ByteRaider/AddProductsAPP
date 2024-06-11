import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/providers/login_form_provider.dart';
import 'package:form_validation_productsapp_example/widgets/auth_background.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';
import 'ui/input_decorations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, superkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProvider(),
                      child: const _LoginForm(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Create New Account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
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
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      padding: const EdgeInsets.all(5),
      child: Form(
        key: loginForm.formKey, // set the form key
        autovalidateMode:
            AutovalidateMode.onUserInteraction, // set the autovalidate mode
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
              onChanged: (value) => loginForm.email = value,
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
              onChanged: (value) => loginForm.password = value,
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
                onPressed: loginForm.isLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();
                        if (!loginForm.isValidForm()) return;
                        loginForm.isLoading = true;
                        // simulate a network request
                        await Future.delayed(const Duration(seconds: 2));
                        // end simulating a network request
                        //TODO: validate LOGIN credentials
                        loginForm.isLoading = false; //
                        Navigator.pushReplacementNamed(context, 'home');
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
                  child: Text(loginForm.isLoading ? 'PLease wait...' : 'Login'),
                )),
          ],
        ),
      ),
    );
  }
}
