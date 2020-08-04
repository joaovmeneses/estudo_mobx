import 'package:estudo_mobx/Model/Cnpj.dart';
import 'package:estudo_mobx/Model/Empreendimento.dart' as e;
import 'package:estudo_mobx/Views/Formulario/formulario.dart';
import 'package:estudo_mobx/Views/ListEmpreendimento.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EmpreedimentosHome(),
    );
  }
}
