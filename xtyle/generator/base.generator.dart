import 'package:code_builder/code_builder.dart';

abstract class BaseGenerator<T> {
  abstract Map<String, Map<String, dynamic>> baseJsonData;
  abstract String selectorField;
  Field generateField(String name, Map<String, String> value);
  Field generateFieldWithStringVal(String name, String value);
  Method generateMethod(String methodName);
  T generateClass(String className, List<Field> fields);
  Library generateLibrary(String className);

  String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }
}
