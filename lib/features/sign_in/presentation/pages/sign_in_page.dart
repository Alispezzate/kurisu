import 'package:flutter/material.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatefulWidget {
  /// The constructor of the page.
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  TextEditingController tokenTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //build the page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: redirectToLogin(), child: Text('SignIn')),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Token',
              ),
              controller: tokenTextController,
            )
          ],
        ),
      ),
    );
  }

  redirectToLogin() {
    //open
  }
}
