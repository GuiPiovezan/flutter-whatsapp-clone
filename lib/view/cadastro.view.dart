import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CadastroView extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;

  String email = "";
  String senha = "";

  void create() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var result = await auth.createUserWithEmailAndPassword(
          email: email, password: senha);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/whatsapp-logo.png'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: TextFormField(
                onSaved: (((newValue) => email = newValue!)),
                validator: ((value) =>
                    value == "" ? "Campo e-mail obrigatório" : null),
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: TextFormField(
                onSaved: (((newValue) => senha = newValue!)),
                validator: ((value) =>
                    value == "" ? "Campo senha obrigatório" : null),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                onPressed: create,
                child: const Text("Cadastrar"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
