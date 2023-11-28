import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/data/repo/todo_dao_repository.dart';
class HomePageCubit extends Cubit<List<Todo>> {
  HomePageCubit() : super(<Todo>[]);


  var tRepo = TodoDaoRepository();

  Future<void> todoUpload() async {
    var list = await tRepo.personUpload();
    emit(list);
  }

  Future<void> search(String searchWord) async {
    var list = await tRepo.search(searchWord);
    emit(list);
  }

  Future<void> delete(int person_id) async {
    await tRepo.delete(person_id);
    todoUpload();
  }

}