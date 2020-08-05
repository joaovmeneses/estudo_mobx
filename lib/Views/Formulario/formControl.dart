import 'package:estudo_mobx/Views/Formulario/cnpjcontroller.dart';
import 'package:mobx/mobx.dart';
import '../../Model/Cnpj.dart';

part 'formControl.g.dart';

class ControllerForm = _FormBase with _$ControllerForm;

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
  ObservableList<CNPJ> cnpj = ObservableList.of([CNPJ()]);

  @action
  incrementCnpj(){
    cnpj.insert(cnpj.length, CNPJ());
  }

  @action
  List<Cnpj> toCnpj(){
    List<Cnpj> aux = List();
    for(int i = 0; i < cnpj.length; i++){
      aux.add(Cnpj(null, cnpj[i].cnpj));
    }
    return aux;
  }
}