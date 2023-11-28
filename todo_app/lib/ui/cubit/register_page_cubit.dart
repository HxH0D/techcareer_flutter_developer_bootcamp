import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/repo/todo_dao_repository.dart';

class RegisterPageCubit extends Cubit<void>{
  RegisterPageCubit():super(0);

  var kRepo = TodoDaoRepository();

  Future<void> save(String title, String description) async{
    await kRepo.save(title, description);
  }
}