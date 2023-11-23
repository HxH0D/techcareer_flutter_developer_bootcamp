import 'package:contacts_app/data/repo/kisiler_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPageCubit extends Cubit<void>{
  RegisterPageCubit():super(0);

  var kRepo = KisilerDaoRepository();

  Future<void> save(String person_name, String person_number) async{
    await kRepo.save(person_name, person_number);
  }
}