import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  static final DB _instance = new DB.getInstance();
  factory DB() => _instance;

  DB.getInstance();

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }

    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');
    print("db $path");

    _db = await initDb();
    return _db;
  }

  initDb() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');
    print("db $path");

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    //Table Empreendedor
    await db.execute("create table empreendimento("
        "id integer primary key autoincrement,"
        "razao_social text"
        ");");

    //Table Empreendedor
    await db.execute("create table cnpj("
        "id integer primary key autoincrement,"
        "cnpj text,"
        "empreendimento_id int,"
        "foreign key(empreendimento_id) references empreendimento(id)"
        ");");
  }
}
