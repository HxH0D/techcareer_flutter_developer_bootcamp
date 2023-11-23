import 'package:contacts_app/data/entity/kisiler.dart';
import 'package:contacts_app/data/repo/kisiler_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<List<Kisiler>> {
  HomePageCubit() : super(<Kisiler>[]);

  var kRepo = KisilerDaoRepository();

  Future<void> personUpload() async {
    var list = await kRepo.personUpload();
    emit(list);
  }

  Future<void> search(String searchWord) async {
    var list = await kRepo.search(searchWord);
    emit(list);
  }

  Future<void> delete(int person_id) async {
    await kRepo.delete(person_id);
    personUpload();
  }
}
