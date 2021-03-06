import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/mensagem.model.dart';

class CardMessage extends StatelessWidget {
  final MensagemModel model;

  // ignore: use_key_in_widget_constructors
  const CardMessage(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(13, 7, 18, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 27.5,
              backgroundImage: NetworkImage(""),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.nome!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  model.ultimaMensagem!,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  model.dataUltimaMensagem!.hour.toString() +
                      ":" +
                      model.dataUltimaMensagem!.minute.toString(),
                ),
                const SizedBox(
                  height: 4,
                ),
                CircleAvatar(
                  child: Text(
                    model.quantidadeNaoLida.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  radius: 11,
                  backgroundColor: const Color(0xFF1EBE71),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
