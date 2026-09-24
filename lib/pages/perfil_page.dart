import 'package:flutter/material.dart';
import 'package:instagram_aula/pages/login_page.dart';

import '../utils/mensagem_util.dart';
import '../widgets/numero_perfil.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  void sair(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            title: const Text(
              '@011_vitinchucro',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  mostrarMensagem(context, 'Criar publicação');
                },
                icon: const Icon(Icons.add_box_outlined),
              ),
              IconButton(
                onPressed: () {
                  mostrarMensagem(context, 'Abrir menu');
                },
                icon: const Icon(Icons.menu),
              ),
              IconButton(
                onPressed: () => sair(context),
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.person, color: Colors.white, size: 48),
                      ),
                      SizedBox(width: 24),
                      Expanded(child: NumeroPerfil(numero: '9', rotulo: 'publicações')),
                      Expanded(child: NumeroPerfil(numero: '1.250', rotulo: 'seguidores')),
                      Expanded(child: NumeroPerfil(numero: '380', rotulo: 'seguindo')),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Text('vitin chucro', style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('244 di essipe 😈🏍️'),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        mostrarMensagem(context, 'Editar perfil');
                      },
                      child: const Text('Editar perfil'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                  child: Padding(padding: EdgeInsets.all(12), child: Icon(Icons.grid_on)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.person_pin_outlined, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, indice) {
                final cores = [
                  Colors.deepPurple, Colors.pink, Colors.blue, Colors.orange, Colors.teal,
                ];

                return Container(
                  color: cores[indice % cores.length],
                  child: const Icon(Icons.flutter_dash, color: Colors.white, size: 42),
                );
              },
              childCount: 9,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
          ),
        ],
      ),
    );
  }
}