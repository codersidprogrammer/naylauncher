import 'dart:convert';
import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:code_builder/code_builder.dart';

class FSUtil {
  static void ensureFolderExists(String path) {
    final directory = Directory(path);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Directory created: $path');
    } else {
      print('Directory already exists: $path');
    }
  }

  static bool isFolderPathExist(String path) {
    final directory = Directory(path);
    if (directory.existsSync()) {
      directory.createSync(recursive: true);
      return true;
    }

    return false;
  }

  static void generateCode(Library library, String filePath) {
    final emitter = DartEmitter();
    final code = '${library.accept(emitter)}';
    final formattedCode = DartFormatter().format(code);
    final file = File(filePath);
    file.writeAsStringSync(formattedCode);
  }

  static Map<String, Map<String, dynamic>> readJsonConfig(String filePath) {
    final file = File(filePath).readAsStringSync();
    final jsonData = jsonDecode(file);
    return (jsonData as Map<String, dynamic>).map(
      (key, value) => MapEntry(
        key,
        value as Map<String, dynamic>,
      ),
    );
  }
}
