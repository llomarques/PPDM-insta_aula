import 'package:flutter/material.dart';
import 'package:instagram_aula/pages/home_page.dart';
import 'package:instagram_aula/utils/mensagem_util.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  bool esconderSenha = true;

  Future<void> entrar() async {
    String usuario = usuarioController.text.trim();
    String senha = senhaController.text;

    if(usuario.isEmpty || senha.isEmpty){
      mostrarMensagem(context, 'Preencha os campos.');
      return;
    }
  }

  void abrirHome(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage())
    );
  }

  @override
  void dispose(){
    usuarioController.dispose();
    senhaController.dispose();

    super.dispose();
  }
    
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 120,),

            const Icon(
              Icons.flutter_dash,
              size: 100,
            ),

            const SizedBox(height: 20,),

            const Text('Bem vindo', textAlign: TextAlign.center, 
             style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              ),

              const SizedBox(height: 30,),

              TextField(
                controller: usuarioController,
                decoration: const InputDecoration(
                  labelText: 'usuário',
                  prefixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15,),

              TextField(
                controller: senhaController,
                obscureText: esconderSenha,
                decoration: InputDecoration(
                  labelText: 'senha',
                  prefixIcon: const Icon(Icons.lock),
                  border: const OutlineInputBorder(),

                  suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      esconderSenha = !esconderSenha;
                    });
                  }, 
                  icon: Icon(
                    esconderSenha ? Icons.visibility : Icons.visibility_off
                  )
                ),
                ),
              ),

              const SizedBox(height: 25,),

              ElevatedButton.icon(
              onPressed: abrirHome, 
              label: const Text('Entrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 170, 192),
                foregroundColor: Colors.black
              ),
            ),              
          ],
        ),
      ),
    );
  }

}