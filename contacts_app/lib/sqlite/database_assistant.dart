import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseAssistant {
  static final String databaseName = "rehber.sqlite";

  static Future<Database> databaseAccess() async {
    String databasePath = join(await getDatabasesPath(), databaseName);

    if(await databaseExists(databasePath)){
      print("Veritabani daha önce kopyalanmış");
    }else{
      ByteData data = await rootBundle.load("database/$databaseName");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(databasePath).writeAsBytes(bytes,flush: true);
      print("Veritaban kopyalandı");
    }

    return openDatabase(databasePath);
  }
}
