import 'package:flutter/material.dart';
import 'package:instagram_aula/utils/mensagem_util.dart';

class Stories extends StatelessWidget{
  const Stories({super.key});

  @override
  Widget build(BuildContext context){

    const stories = [
      ('Seu story', Icons.add, Colors.grey),
      ('Victor', Icons.face_3, Colors.pink),
      ('Nikollas', Icons.face_4, Colors.orange),
      ('Giovanna', Icons.face_6, Colors.red),
      ('Vinicius', Icons.face_3, Colors.purple),
      ('Carlos', Icons.flutter_dash, Colors.green),
      ('Matheus', Icons.face_2, Colors.blue),
    ];

    return SizedBox(
        height: 112,
        child: ListView.builder(         
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, indice){
            final story = stories[indice];
            return GestureDetector(
              onTap: (){
                mostrarMensagem(context, 'Story de ${story.$1}');
              },
              child: SizedBox(
               width: 78,
               child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: indice == 0 
                          ? [Colors.grey.shade400, Colors.grey.shade400] 
                          : [Colors.purple, Colors.pink, Colors.orange]
                        )
                      ),
                      child:  CircleAvatar(
                        radius: 32,
                        backgroundColor: story.$3,
                        child: Icon(story.$2, color: Colors.white, size: 30),
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      story.$1,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
               ),
             ),
            );
          },
        ),
    );
  }
}