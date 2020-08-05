import 'package:estudo_mobx/Model/Empreendimento.dart';
import 'package:mobx/mobx.dart';

part 'controllerEmp.g.dart';

class controllerEmpreendimentos = _Empreedimentobase with _$controllerEmpreendimentos;

abstract class _Empreedimentobase with Store{

  @observable
  ObservableList<Empreendimento> empreendimentos = ObservableList();

  @action
  getEmpreendimentos(){
    getAll().then((List<Empreendimento> value) =>{
        for(Empreendimento emp in value){
          empreendimentos.add(emp)
        }
    });
  }

  @action
  deleteEmpreendimento(index, empreendimento){
    delete(empreendimento);
//    empreendimentos.removeAt(index);
    empreendimentos.clear();
    getEmpreendimentos();
  }

}