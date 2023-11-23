import 'package:block_kullanimi/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0); // Varsayılan değer

  var mRepo = MatematikRepository();

  void topla(String alinanSayi1, String alinanSayi2){
    int toplam =mRepo.topla(alinanSayi1, alinanSayi2);
    emit(toplam);//Tetikleme ve ya veri gönderme
  }
  void carp(String alinanSayi1, String alinanSayi2){
    int carpma =mRepo.carp(alinanSayi1, alinanSayi2);
    emit(carpma);//Tetikleme ve ya veri gönderme
  }

}
