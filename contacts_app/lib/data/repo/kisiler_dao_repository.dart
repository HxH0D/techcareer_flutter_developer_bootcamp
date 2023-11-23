import 'package:contacts_app/data/entity/kisiler.dart';
import 'package:contacts_app/sqlite/database_assistant.dart';

class KisilerDaoRepository {
  Future<void> save(String person_name, String person_number) async {
    print(person_name + "" + person_number);
  }

  Future<void> update(
      int person_id, String person_name, String person_number) async {
    print(person_name + "" + person_number);
  }

  Future<List<Kisiler>> personUpload() async {
    var db = await DatabaseAssistant.databaseAccess();
    List<Map<String, dynamic>> lines = await db.rawQuery("SELECT * FROM kisiler");


    return List.generate(lines.length, (index){
      var line = lines[index];
      var kisi_id = line["kisi_id"];
      var kisi_adi = line["kisi_ad"];
      var kisi_tel = line["kisi_tel"];

      return Kisiler(kisi_id: kisi_id, kisi_ad: kisi_adi, kisi_tel: kisi_tel);
    });
  }

  Future<List<Kisiler>> search(String searchWord) async {
    var personList = <Kisiler>[];
    var person1 = Kisiler(kisi_id: 1, kisi_ad: "Emre", kisi_tel: "05397140977");
    var person2 = Kisiler(kisi_id: 2, kisi_ad: "Ali", kisi_tel: "05395540977");
    var person3 = Kisiler(kisi_id: 3, kisi_ad: "Zeynep", kisi_tel: "05397144785");

    personList.add(person1);
    personList.add(person2);
    personList.add(person3);

    Iterable<Kisiler> filtering = personList.where((element) {
      return element.kisi_ad.toLowerCase().contains(searchWord.toLowerCase());
    });

    return filtering.toList();
  }

  Future<void> delete(int person_id) async {
    print(person_id);
  }
}
