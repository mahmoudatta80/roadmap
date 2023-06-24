import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roadmap/db_helper/cubit/states.dart';
import 'package:path/path.dart';
import 'package:roadmap/db_helper/model/model.dart';
import 'package:roadmap/state_management/user_information.dart';
import 'package:sqflite/sqflite.dart';

class MyTestCubit extends Cubit<MyStates> {
  MyTestCubit() : super(MyInitialState());

  hello() {
    print('======================');
    print('hello1');
    print('======================');
  }

  Database? database;
  String dbPath = 'table.db';
  String myTable = 'CREATE TABLE my_table (title TEXT, year INTEGER)';

  openMyDb() async {
    if (database != null) {
      return database;
    } else {
      database = await createMyDb();
      return database;
    }
  }

  createMyDb() async {
    emit(MyLoadingState());
    String path = join(await getDatabasesPath(), dbPath);
    Database myDb = await openDatabase(
      path,
      version: 1,
      onCreate: (db,v) async{
        await db.execute(myTable);
      }
    );
    return myDb;
  }

  List myFavourite = [];

  readMyDb() async{
    Database database = await openMyDb();
    return await database.query('my_table').then((value) {
      myFavourite = value;
      emit(ReadMyDbState());
    });
  }

  insertMyDb(FavouriteModel favouriteModel) async{
    Database database = await openMyDb();
    return await database.insert('my_table', favouriteModel.toMap()).then((value) {
      readMyDb();
    });
  }

  deleteMyDb(int year) async{
    Database database = await openMyDb();
    return database.delete('my_table', where: 'year = ?', whereArgs: [year]).then((value) {
      readMyDb();
    });
  }
}
