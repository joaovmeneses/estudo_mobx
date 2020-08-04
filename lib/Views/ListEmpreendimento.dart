import 'package:estudo_mobx/Views/Formulario/formulario.dart';
import 'package:flutter/material.dart';




class EmpreedimentosHome extends StatefulWidget {
  @override
  _EmpreedimentosHomeState createState() => _EmpreedimentosHomeState();
}

class _EmpreedimentosHomeState extends State<EmpreedimentosHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Formulario();
            }));
          },
        ),
      ),
    );
  }
}
