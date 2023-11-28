import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/sqlite/database_asistant.dart';

class TodoDaoRepository {
  Future<void> save(String title, String description) async {
    var db = await DatabaseAssistant.databaseAccess();
    await db.transaction((txn) async {
      await txn.rawInsert('''
    INSERT INTO toDos(title, description)
    VALUES('$title', '$description')
  ''');
    });
  }

  Future<void> update(int id, String title, String description) async {
    var db = await DatabaseAssistant.databaseAccess();
    await db.rawUpdate('''
    UPDATE toDos 
    SET title = ?, description = ?
    WHERE id = ?
  ''', [title, description, id]);

  }

  Future<List<Todo>> personUpload() async {
    var db = await DatabaseAssistant.databaseAccess();
    List<Map<String, dynamic>> lines = await db.rawQuery("SELECT * FROM toDos");

    return List.generate(lines.length, (index) {
      var line = lines[index];
      var id = line["id"];
      var title = line["title"];
      var description = line["description"];

      return Todo(id: id, title: title, description: description);
    });
  }

  Future<List<Todo>> search(String searchWord) async {
    var db = await DatabaseAssistant.databaseAccess();
    List<Map<String, dynamic>> lines = await db.rawQuery(
        "SELECT * FROM toDos WHERE title LIKE '%$searchWord%'"
    );

    return List.generate(lines.length, (index) {
      var line = lines[index];
      var id = line["id"];
      var title = line["title"];
      var description = line["description"];

      return Todo(id: id, title: title, description: description);
    });
  }

  Future<void> delete(int id) async {
    var db = await DatabaseAssistant.databaseAccess();
    await db.rawDelete('DELETE FROM toDos WHERE id = ?', [id]);

  }
}
