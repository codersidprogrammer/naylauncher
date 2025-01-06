import 'package:code_builder/code_builder.dart';

import 'base.generator.dart';

class ColorsGenerator extends BaseGenerator<Class> {
  @override
  Map<String, Map<String, dynamic>> baseJsonData;

  @override
  String selectorField;
  String _stub = 'MaterialColor(//defaultColor, //listColor)';
  String _stubList = '<int, Color>{//list}';

  ColorsGenerator({required this.baseJsonData, required this.selectorField});

  @override
  Library generateLibrary(String className) {
    Map<String, dynamic>? _colors = this.baseJsonData[this.selectorField];
    List<Field> _tempField = List.empty(growable: true);

    _colors?.forEach((key, value) {
      _tempField.add(
        this.generateField(
          key,
          (value as Map<String, dynamic>).map(
                (k, v) => MapEntry(
              k,
              v as String,
            ),
          ),
        ),
      );
    });

    return Library(
          (l) => l.body.addAll([
        Directive.import('package:flutter/material.dart'),
        this.generateClass(className, _tempField),
      ]),
    );
  }

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
    String _list = '';
    String _defaultColorCode = '';
    String _tempStubList = '';
    String _tempStub = '';

    value.forEach((key, val) {
      _list += '$key: Color(${val.replaceAll('#', '0xFF')}),\n';
      if (key == '500') {
        _defaultColorCode = val.replaceAll('#', '0xFF');
      }
    });

    _tempStubList = this._stubList.replaceAll('//list', _list);
    _tempStub = this
        ._stub
        .replaceAll('//listColor', _tempStubList)
        .replaceAll('//defaultColor', _defaultColorCode);

    return Field(
      (f) => f
        ..name = name
        ..static = true
        ..type = refer('MaterialColor')
        ..modifier = FieldModifier.constant
        ..assignment = Code(_tempStub),
    );
  }

  @override
  Field generateFieldWithStringVal(String name, String value) {
    // TODO: implement generateFieldWithStringVal
    throw UnimplementedError();
  }

  @override
  Method generateMethod(String methodName) {
    // TODO: implement generateMethod
    throw UnimplementedError();
  }
}
