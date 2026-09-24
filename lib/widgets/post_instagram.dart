import 'package:flutter/material.dart';
import 'package:instagram_aula/utils/mensagem_util.dart';

class PostInstagram extends StatefulWidget{
    final String usuario;
    final String local;
    final String legenda;
    final Color cor;
    final IconData icone;
    final int curtidasInciais;

    const PostInstagram({
      super.key,
      required this.usuario,
      required this.local,
      required this.legenda,
      required this.cor,
      required this.icone,
      required this.curtidasInciais,
    });

    @override
    State<PostInstagram> createState() => _PostInstagramState();
}

class _PostInstagramState extends State<PostInstagram>{

    bool curtiu = false;
    bool salvou = false;

    void alternarCurtida(){
      setState(() {
        curtiu = !curtiu;
      });
    }

    void alternarSalvamento(){
      setState(() {
        salvou = !salvou;
      });
    }

    @override
    Widget build(BuildContext context){
      final totalCurtidas = widget.curtidasInciais + (curtiu ? 1 : 0);

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: widget.cor,
              child: Icon(widget.icone, color: Colors.white),
            ),
            title: Text(
              widget.usuario, 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text(widget.local),
            trailing: IconButton(
              onPressed: (){
                mostrarMensagem(context, "Opcões da publicação");
              }, 
              icon: Icon(Icons.more_horiz)
            ),
          ),
          GestureDetector(
            onDoubleTap: alternarCurtida,
            child: Container(
              height: 330,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [widget.cor, widget.cor.withValues(alpha: 0.55)]
                )
              ),
              child: Icon(widget.icone, color: Colors.white, size: 130,),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: alternarCurtida, 
                icon: Icon(curtiu ? Icons.favorite: Icons.favorite_border),
                color: curtiu ? Colors.red : Colors.black,
              ),
              IconButton(
                onPressed: (){
                  mostrarMensagem(context, 'Abrir comentario');
                }, 
                icon: Icon(Icons.mode_comment_outlined),                
              ),
              IconButton(
                onPressed: (){
                  mostrarMensagem(context, 'Compartilhar publicação');
                }, 
                icon: Icon(Icons.send_outlined),                
              ),
              Spacer(),
              IconButton(
                onPressed: alternarSalvamento, 
                icon: Icon(salvou ? Icons.bookmark: Icons.bookmark_border),               
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              '$totalCurtidas curtidas', 
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 2),
            child: Text.rich(
              TextSpan(
                children:[
                  TextSpan(
                    text: '${widget.usuario} ', 
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(text: widget.legenda)
                ] 
              )
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            child: Text(
              'Ver todos os comentários', 
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ),
          const Divider(),
            

        ],
      );

    }

}