import 'package:flutter/material.dart';

class BotaoReel extends StatelessWidget {
  final IconData icone;
  final String texto;
  final VoidCallback aoTocar;

  const BotaoReel({
    super.key,
    required this.icone,
    required this.texto,
    required this.aoTocar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: aoTocar,
            icon: Icon(icone, color: Colors.white, size: 30),
          ),
          Text(
          texto,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    ));
  }
}