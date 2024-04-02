import 'package:app_catolica/pagina_lista_alunos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool _passwordVisible  = false;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logocatolica_g.png', width: 300, height: 270),
                
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    width: 310,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        label: const Text("Informe seu e-mail") ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Icon(Icons.alternate_email_rounded, color: Color.fromRGBO(0, 34, 102, 1)),),
                        ),
                      ),
                    ),
                ),
                  
                    SizedBox(
                    width: 310,
                    height: 50,
                    child: TextFormField(
                      controller: senhaController,
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        label: const Text("Digite sua senha"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Icon(Icons.password, color: Color.fromRGBO(0, 34, 102, 1)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                          ),
                          onPressed: (){
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      child: Text('Entrar'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        backgroundColor: const Color.fromRGBO(0, 34, 102, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 16)
                      ) ,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaginaListaAlunos()));
                      },
                    ),
                  ),
                  
                  ],
                )
              ],
            )
        )
      )
    );
  }
}