import 'package:app_catolica/pagina_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> PageLogin()));
    });


    return SafeArea(
      child:  Scaffold(
        backgroundColor: Color.fromRGBO(0, 34, 102, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logocatolica_p.png', width: 173, height: 173),

               SizedBox(
                  height: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     const Text('Saudações, \nagreadecemos por usar \nnosso aplicativo!',
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 40,
                ),
                SizedBox(
                  child:(
                    Text("Versão 0.0.1.pre-alpha",
                    textAlign: TextAlign.center,
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),)
                  ),
                )
              ],
            ),
          ),
        ),      
      ),
    );
  }
}