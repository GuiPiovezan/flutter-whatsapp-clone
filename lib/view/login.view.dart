import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;

  String email = "";
  String senha = "";

  void save(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var result =
          await auth.signInWithEmailAndPassword(email: email, password: senha);

      Navigator.of(context).pushNamed('/mensagens');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: ((newValue) => email = newValue!),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Campo e-mail obrigatório";
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: true,
              onSaved: (newValue) => senha = newValue!,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Campo senha obrigatório";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () => save(context),
              child: const Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}
