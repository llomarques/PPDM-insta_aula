import 'package:flutter/material.dart';
import 'package:instagram_aula/pages/buscar_page.dart';
import 'package:instagram_aula/pages/feed_page.dart';
import 'package:instagram_aula/pages/perfil_page.dart';
import 'package:instagram_aula/pages/reels_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int indiceAtual = 0;

  final List<Widget> telas = const [
      FeedPage(),
      BuscarPage(),
      ReelsPage(),
      PerfilPage()
  ];

  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: IndexedStack(
          index: indiceAtual,
          children: telas,
        ),
        bottomNavigationBar: NavigationBar(
          height: 68,
          backgroundColor: Colors.white,
          indicatorColor: Colors.pink.shade50,
          selectedIndex: indiceAtual,
          onDestinationSelected: (novoIndice){
              setState(() {
                indiceAtual = novoIndice;
              });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined), 
              selectedIcon:Icon(Icons.home) ,
              label: 'Início'
            ),
            NavigationDestination(
              icon: Icon(Icons.search), 
              selectedIcon:Icon(Icons.search, size: 30,) ,
              label: 'Buscar'
            ),
              NavigationDestination(
              icon: Icon(Icons.movie_outlined), 
              selectedIcon:Icon(Icons.movie,) ,
              label: 'Reels'
            ),
              NavigationDestination(
              icon: Icon(Icons.person_outline), 
              selectedIcon:Icon(Icons.person) ,
              label: 'Perfil'
            ),
          ]
        ),
      );
  }
}