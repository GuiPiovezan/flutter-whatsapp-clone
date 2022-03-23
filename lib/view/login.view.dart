import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;

  String email = "";
  String senha = "";

  void save() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var result =
          await auth.signInWithEmailAndPassword(email: email, password: senha);
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
              onPressed: save,
              child: const Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}
