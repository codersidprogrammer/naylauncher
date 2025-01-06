import 'package:code_builder/code_builder.dart';

import 'base.generator.dart';

class SpacerGenerator extends BaseGenerator<Class> {
  @override
  Map<String, Map<String, dynamic>> baseJsonData;

  @override
  String selectorField;

  SpacerGenerator({required this.baseJsonData, required this.selectorField});

  @override
  Class generateClass(String className, List<Field> fields) {
    return Class(
          (c) => c
        ..name = className
        ..fields.addAll(fields),
    );
  }

  @override
  Field generateField(String name, Map<String, String> value) {
    return Field(
          (f) => f
        ..name = name == 'DEFAULT' ? 'base' : 'spacer$name'
        ..static = true
        ..type = refer('double')
        ..modifier = FieldModifier.constant
        ..assignment = Code(name == 'DEFAULT'
            ? value.values.first
            : 'base * ${value.values.first}'),
    );
  }

  @override
  Library generateLibrary(String className) {
    Map<String, dynamic>? _sizes = this.baseJsonData[this.selectorField];
    List<Field> _tempField = List.empty(growable: true);

    _sizes?.forEach((key, val) {
      _tempField.add(this.generateFieldWithStringVal(
        key,
        val,
      ));
    });

    return Library(
          (l) => l.body.addAll([
        this.generateClass(className, _tempField),
      ]),
    );
  }

  @override
  Field generateFieldWithStringVal(String name, String value) {
    return Field(
          (f) => f
        ..name = name == 'DEFAULT' ? 'base' : 'spacer$name'
        ..static = true
        ..type = refer('double')
        ..modifier = FieldModifier.constant
        ..assignment = Code(name == 'DEFAULT' ? value : 'base * ${value}'),
    );
  }

  @override
  Method generateMethod(String methodName) {
    // TODO: implement generateMethod
    throw UnimplementedError();
  }
}
