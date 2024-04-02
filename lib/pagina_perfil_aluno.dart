import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PaginaAluno extends StatefulWidget {
  const PaginaAluno({super.key});

  @override
  State<PaginaAluno> createState() => _PaginaAlunoState();
}

class _PaginaAlunoState extends State<PaginaAluno> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Perfil do Aluno"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(0, 34, 102, 1),
          toolbarHeight: 70
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
              ),
              Image.asset('images/img_logo_aluno.png', width: 270, height: 150),
              
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                    child: ListTile(
                      leading: Icon(Icons.person_outline, 
                      color:Color.fromRGBO(0, 34, 102, 1),
                      size: 30,
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    tileColor: Color.fromRGBO(246, 246, 246, 1),
                    title: Text('Jane Cooper'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                    child: ListTile(
                      leading: Icon(Icons.badge_outlined, 
                      color:Color.fromRGBO(0, 34, 102, 1),
                      size: 30,
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    tileColor: Color.fromRGBO(246, 246, 246, 1),
                    title: Text('000.000.000-00'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                    child: ListTile(
                      leading: Icon(Icons.phone_outlined, 
                      color:Color.fromRGBO(0, 34, 102, 1),
                      size: 30,
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    tileColor: Color.fromRGBO(246, 246, 246, 1),
                    title: Text('(83) 0 0000-0000'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                    child: ListTile(
                      leading: Icon(Icons.menu_book, 
                      color:Color.fromRGBO(0, 34, 102, 1),
                      size: 30,
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    tileColor: Color.fromRGBO(246, 246, 246, 1),
                    title: Text('P6'),
                      ),
                    )
                  ],
                ),
              )
             ]
            ),
        ),

      )
      );
  }
}