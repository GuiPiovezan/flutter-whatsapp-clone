import 'package:flutter/material.dart';

class CardMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: SizedBox(
          height: 50.0,
          width: 350.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Maria",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const Text(
                    "Olá, seja bem-vindo!",
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("18:00"),
                  ),
                  const Text("2"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
