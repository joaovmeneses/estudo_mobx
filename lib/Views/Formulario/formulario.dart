import 'package:estudo_mobx/Views/Formulario/formControl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    ControllerForm controllerForm = ControllerForm();
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: Observer(
              builder: (_){
                return FloatingActionButton(onPressed: () {
                  controllerForm.incrementCnpj();
                });
              }
          ),
          appBar: AppBar(
            title: Text("Formulário"),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Observer(
                    builder: (_) {
                      return TextFormField(
                        decoration: InputDecoration(
                          labelText: "Razão social",
                        ),
                        onChanged: controllerForm.changeRazao,
                      );
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextField(
                  decoration: InputDecoration(labelText: "CNPJ"),
                ),
              ),
              Observer(
                builder: (_){
                  return  ListView.builder(
                    shrinkWrap: true,
                    itemCount: controllerForm.cnpj.length,
                    itemBuilder: (context, index) {
                      return TextFormField(
                        decoration: InputDecoration(labelText: "CNPJ"),
                      );
                    },
                  );
                },
              ),
              RaisedButton(
                child: Text("Adicionar"),
                onPressed: () {
//                  Navigator.pop(context);
                  controllerForm.incrementCnpj();

                },
              )
            ],
          )),
    );
  }
}
