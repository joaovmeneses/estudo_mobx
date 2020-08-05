import 'package:mobx/mobx.dart';

part 'cnpjcontroller.g.dart';

class CNPJ = _CNPJbase with _$CNPJ;

abstract class _CNPJbase with Store{

  constructor(id, string){
    cnpj = string;
    id = id;
  }

  @observable
  int id;

  @observable
  String cnpj;

  @action
  changeCnpj(value){
    cnpj = value;
  }

}