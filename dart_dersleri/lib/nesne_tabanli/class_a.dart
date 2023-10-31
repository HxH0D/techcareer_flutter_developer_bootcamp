import 'package:dart_dersleri/nesne_tabanli/my_interface.dart';

class ClassA implements MyInterface{

  @override
  int degisken = 10;

  @override
  void method1() {
    print("Method 1 Çalıstı");
  }

  @override
  String meyhod2() {
    return "Method 2 çalıstı";
  }
}