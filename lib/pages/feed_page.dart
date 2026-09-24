import 'package:flutter/material.dart';
import 'package:instagram_aula/widgets/post_instagram.dart';
import 'package:instagram_aula/widgets/stories.dart';
import '../utils/mensagem_util.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            title: const Text(
              'InstaAula',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
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
                  mostrarMensagem(context, 'Você não possui novas mensagens');
                },
                icon: const Icon(Icons.send_outlined),
              ),
            ],
          ),
          const SliverToBoxAdapter(child: Stories()),
          const SliverToBoxAdapter(child: Divider(height: 1)),

          const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: "flutter.dev",
              local: "São Paulo, Brasil",
              legenda: "Construindo interfaces incriveis com Flutter 💓",
              cor: Colors.blue,
              icone: Icons.flutter_dash,
              curtidasInciais: 128,
            ),
          ),

          const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: "professor.mobile",
              local: "Osasco, Brasil",
              legenda: "Aula de desenvolvimento mobile concluida com sucesso",
              cor: Colors.deepPurple,
              icone: Icons.school,
              curtidasInciais: 94,
            ),
          ),

          const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: "vitor.dev",
              local: "Carapicuiba, Brasil",
              legenda: "Grau e arte 💓",
              cor: Colors.teal,
              icone: Icons.code,
              curtidasInciais: 2,
            ),
          ),
        ],
      ),
    );
  }
}