import 'package:flutter/material.dart';

class BuscarPage extends StatefulWidget {
  const BuscarPage({super.key});

  @override
  State<BuscarPage> createState() => _BuscarPageState();
}

class _BuscarPageState extends State<BuscarPage> {
  String pesquisar = '';

  final List<String> assuntos = const [
    'Flutter',
    'Dart',
    'Mobile',
    'Programação',
    'Tecnologia',
    'Design',
    'Faculdade',
    'Projetos',
    'Carreira',
  ];

  @override
  Widget build(BuildContext context) {
    final resultado = assuntos
        .where((item) => item.toLowerCase().contains(pesquisar.toLowerCase()))
        .toList();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              onChanged: (texto) {
                setState(() {
                  pesquisar = texto;
                });
              },
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(4),
                itemCount: resultado.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),

                itemBuilder: (context, indice) {
                  final cores = [
                    Colors.pink,
                    Colors.deepPurple,
                    Colors.blue,
                    Colors.orange,
                    Colors.teal,
                  ];

                  return Container(
                    color: cores[indice % cores.length],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.code, color: Colors.white, size: 38),
                        const SizedBox(height: 8),
                        Text(
                          resultado[indice],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}