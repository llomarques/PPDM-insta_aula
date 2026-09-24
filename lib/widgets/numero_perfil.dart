import 'package:flutter/material.dart';

class NumeroPerfil extends StatelessWidget {
  final String numero;
  final String rotulo;

  const NumeroPerfil({
    super.key,
    required this.numero,
    required this.rotulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numero, style: const TextStyle(fontSize: 17),
        ),
        Text(
          rotulo, style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}