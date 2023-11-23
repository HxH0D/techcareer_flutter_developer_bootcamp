import 'package:contacts_app/data/repo/kisiler_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DetailPageCubit extends Cubit<void>{
  DetailPageCubit():super(0);

  var kRepo = KisilerDaoRepository();
  Future<void> update(int person_id, String person_name, String person_number)async{
    return kRepo.update(person_id, person_name, person_number);
  }


}