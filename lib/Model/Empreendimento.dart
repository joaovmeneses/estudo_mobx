import 'package:estudo_mobx/DB/database.dart';
import 'package:estudo_mobx/Model/Cnpj.dart';
import 'package:sqflite/sqflite.dart';
import 'Cnpj.dart' as c;

class Empreendimento {
  int id;
  String razao_social;
  List<Cnpj> cnpj;

  Empreendimento(this.id, this.razao_social, this.cnpj);

  Empreendimento.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        razao_social = map['razao_social'];

  @override
  String toString() {
    // TODO: implement toString
    return "$id | $razao_social | \n >> $cnpj";
  }
}

Future<int> insert(Empreendimento empreendimento) async {
  final Database _db = await DB().db;
  final String sql = "insert into empreendimento (razao_social) values (?)";
  int response = await _db.rawInsert(sql, [empreendimento.razao_social]);
  if (response > 0) {
    empreendimento.cnpj.forEach((element) {
      c.insert(element, response);
    });
  }
  return await response;
}

Future<int> update(Empreendimento empreendimento) async {
  final Database _db = await DB().db;
  final String sql = "update empreendimento set razao_social = ? where id = ?";

  return await _db
      .rawUpdate(sql, [empreendimento.razao_social, empreendimento.id]);
}

Future<Empreendimento> find(int id) async {
  final Database _db = await DB().db;
  final String sql = "select * from empreendimento where id = ?";
  List<Map> list_map = await _db.rawQuery(sql, [id]);
  Empreendimento emp = Empreendimento.fromJson(list_map[0]);
  emp.cnpj = await c.getAll(id);
  return emp;
}

Future<List<Empreendimento>> getAll() async {
  final Database _db = await DB().db;
  final String sql = "select * from empreendimento";
  //Pegar Map
  List<Map> list_map = await _db.rawQuery(sql);
  //Lista de Empreendimento
  List<Empreendimento> empreendimentos = new List();
  list_map.forEach((element) {
    Empreendimento emp = Empreendimento.fromJson(element);
    //emp.cnpj =
    empreendimentos.add(emp);
  });
  return empreendimentos;
}

Future<int> delete(Empreendimento empreendimento) async {
  final Database _db = await DB().db;
  final String sql = "delete from empreendimento where id = ?";
  return _db.rawDelete(sql, [empreendimento.id]);
}
