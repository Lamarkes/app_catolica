import 'package:app_catolica/pagina_perfil_aluno.dart';
import 'package:app_catolica/pagina_perfil_professor.dart';
import 'package:flutter/material.dart';

class PaginaListaAlunos extends StatefulWidget {
  const PaginaListaAlunos({super.key});

  @override
  State<PaginaListaAlunos> createState() => _PaginaListaAlunosState();
}

class _PaginaListaAlunosState extends State<PaginaListaAlunos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Lista de Alunos"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(0, 34, 102, 1),
          toolbarHeight: 70,
          actions: [
            IconButton(onPressed: ()=> {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaginaProfessor()))
            }, 
            icon: const Icon(Icons.account_circle_outlined))
          ],
        ),


        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            const SizedBox(
              height: 40,
            ),   
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                SizedBox(
                  width: 40,
                  child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  leading: Image.asset('images/img_ellipse_1.png'),
                  tileColor: const Color.fromRGBO(246, 246, 246, 1),
                  title: const Text('Leslie Alexander'),
                  trailing: const Text('P5'),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0)
                ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 40,
                  child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  leading: Image.asset('images/img_ellipse_1_40x40.png'),
                  tileColor: const Color.fromRGBO(246, 246, 246, 1),
                  title: const Text('Jenny Wilson'),
                  trailing: const Text('P5'),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 40,
                  child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  leading: Image.asset('images/img_ellipse_1_1.png'),
                  tileColor:const Color.fromRGBO(246, 246, 246, 1),
                  title: const Text('Jacob Jones'),  
                  trailing: const Text('P6'),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 40,
                  child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  leading: Image.asset('images/img_ellipse_1_2.png'),
                  tileColor: const Color.fromRGBO(246, 246, 246, 1),
                  title: const Text('Jane Cooper'),
                  trailing: const Text('P6'),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaginaAluno()));
                  },
                ),
                ),

                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 40,
                  child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  leading: Image.asset('images/img_ellipse_1_3.png'),
                  tileColor: const Color.fromRGBO(246, 246, 246, 1),
                  title: const Text('Cody Fisher'),
                  trailing: const Text('P7'),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                ),
                ),

              ],
              ),
            ),
            ]
            ),
        ),
      ),
    );
  }
}