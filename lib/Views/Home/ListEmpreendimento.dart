import 'package:estudo_mobx/Views/Formulario/formulario.dart';
import 'package:estudo_mobx/Views/Home/controllerEmp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';




class EmpreedimentosHome extends StatefulWidget {
  @override
  _EmpreedimentosHomeState createState() => _EmpreedimentosHomeState();
}

class _EmpreedimentosHomeState extends State<EmpreedimentosHome> {
  @override
  Widget build(BuildContext context) {
    controllerEmpreendimentos controller = controllerEmpreendimentos();
    controller.getEmpreendimentos();
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Formulario();
            }));
          },
        ),
        body: Observer(
          builder: (_){
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.empreendimentos.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(controller.empreendimentos[index].razao_social),
                  trailing: GestureDetector(
                    onTap: (){
                      controller.deleteEmpreendimento(index, controller.empreendimentos[index]);
                    },
                    child: Icon(Icons.delete),
                  )
                );
              },
            );
          },
        ),
      ),
    );
  }
}
