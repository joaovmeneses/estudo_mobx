import 'package:estudo_mobx/DB/database.dart';
import 'package:sqflite/sqflite.dart';

class Cnpj {
  int id;
  String cnpj;

  Cnpj(this.id, this.cnpj);

  Cnpj.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        cnpj = map['cnpj'];
  @override
  String toString() {
    // TODO: implement toString
    return "$id | $cnpj";
  }
}

Future<int> insert(Cnpj cnpj, int empreendimento_id) async {
  final Database _db = await DB().db;
  final String sql = "insert into cnpj (cnpj, empreendimento_id) values (?,?)";

  return await _db.rawInsert(sql, [cnpj.cnpj, empreendimento_id]);
}

Future<int> update(Cnpj cnpj) async {
  final Database _db = await DB().db;
  final String sql = "update cnpj set cnpj = ? where id = ?";

  return await _db.rawUpdate(sql, [cnpj.cnpj, cnpj.id]);
}

Future<Cnpj> find(int id) async {
  final Database _db = await DB().db;
  final String sql = "select * from cnpj where id = ?";
  List<Map> list_map = await _db.rawQuery(sql, [id]);
  Cnpj emp = Cnpj.fromJson(list_map[0]);
  //emp.cnpj =
  return emp;
}

Future<List<Cnpj>> getAll(int empreendimento_id) async {
  final Database _db = await DB().db;
  final String sql = "select * from cnpj where empreendimento_id = ?";
  //Pegar Map
  List<Map> list_map = await _db.rawQuery(sql, [empreendimento_id]);
  //Lista de Empreendimento
  List<Cnpj> cnpj = new List();
  list_map.forEach((element) {
    //emp.cnpj =
    cnpj.add(Cnpj.fromJson(element));
  });
  return cnpj;
}

Future<int> delete(Cnpj cnpj) async {
  final Database _db = await DB().db;
  final String sql = "delete from cnpj where id = ?";
  return _db.rawDelete(sql, [cnpj.id]);
}
