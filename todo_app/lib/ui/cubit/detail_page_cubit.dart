import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/repo/todo_dao_repository.dart';
class DetailPageCubit extends Cubit<void>{
  DetailPageCubit():super(0);

  var kRepo = TodoDaoRepository();
  Future<void> update(int id, String title, String description)async{
    return kRepo.update(id, title, description);
  }


}