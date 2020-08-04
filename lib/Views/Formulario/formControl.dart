import 'package:mobx/mobx.dart';
import '../../Model/Cnpj.dart';

part 'formControl.g.dart';

class ControllerForm = _FormBase with _$Form;

abstract class _FormBase with Store{
  @observable
  int id;

  @observable
  String razao_social = "";

  @action
  changeRazao(value){
      razao_social = value;
  }

  @observable
  List<Cnpj> cnpj = [Cnpj(0, "")];

  @action
  incrementCnpj(){
    cnpj.insert(cnpj.length, Cnpj(0, ""));
  }

}