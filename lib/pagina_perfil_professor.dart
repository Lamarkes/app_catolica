import 'package:app_catolica/pagina_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PaginaProfessor extends StatefulWidget {
  const PaginaProfessor({super.key});

  @override
  State<PaginaProfessor> createState() => _PaginaProfessorState();
}

class _PaginaProfessorState extends State<PaginaProfessor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
          appBar: AppBar(
            title: Text("Perfil do Professor"),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(0, 34, 102, 1),
            toolbarHeight: 70,
            actions: [
              IconButton(onPressed: ()=> {
                Navigator.pop(context, MaterialPageRoute(builder: (context)=>const PageLogin()))
              }, 
              icon: Icon(Icons.logout))
            ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
              ),
              Image.asset('images/img_logo_professor.png', width: 270, height: 150),
              
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
                      title: Text('Renê Nóbrega'),
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
                      title: Text('(83) 9 9990-9409'),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                      child: ListTile(
                        leading: Icon(Icons.work_outline, 
                        color:Color.fromRGBO(0, 34, 102, 1),
                        size: 30,
                        ),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      tileColor: Color.fromRGBO(246, 246, 246, 1),
                      title: Text('Coordenador'),
                        ),
                      )
                  ],
                ),
              )
            ]
          )
        )
      )
    );
  }
}