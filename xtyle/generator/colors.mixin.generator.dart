import 'package:code_builder/code_builder.dart';
import 'base.generator.dart';

class ColorsMixinGenerator extends BaseGenerator<Mixin> {
  @override
  Map<String, Map<String, dynamic>> baseJsonData;

  @override
  String selectorField;
  List<String> props = ['bg', 'text', 'icon', 'border'];
  List<Method> methods = List.empty(growable: true);

  ColorsMixinGenerator(
      {required this.baseJsonData, required this.selectorField});

  @override
  Mixin generateClass(String className, List<Field> fields) {
    return Mixin(
      (m) => m
        ..name = className
        ..fields.add(Field((f) => f
          ..late = true
          ..type = refer('late T')
          ..name = '_child'))
        ..methods.add(Method((m) => m
          ..name = 'setChildColoring'
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'child'
            ..type = refer('T')))
          ..body = const Code('''
                          _child = child;
                        ''')))
        ..methods.addAll(props.map((val) {
          return Method((m) => m
            ..name = 'set${capitalizeFirstLetter(val)}Color'
            ..returns = const Reference('T')
            ..requiredParameters.add(Parameter((p) => p
              ..name = 'clr'
              ..type = refer('Color')))
            ..body = Code('''
                          ${val}Color = clr;
                          return _child;
                        '''));
        }))
        ..fields.addAll(props.map((v) {
          return this.generateFieldWithStringVal('${v}Color', '');
        }))
        ..methods.addAll(methods),
    );
  }

  @override
  Field generateField(String name, Map<String, String> value) {
    // TODO: implement generateField
    throw UnimplementedError();
  }

  @override
  Field generateFieldWithStringVal(String name, String value) {
    return Field((f) => f
      ..late = true
      ..type = refer('Color?')
      ..name = name);
  }

  @override
  Library generateLibrary(String className) {
    Map<String, dynamic>? _colors = this.baseJsonData[this.selectorField];

    _colors?.forEach((key, value) {
      var a = (value as Map<String, dynamic>).map(
        (k, v) => MapEntry(
          k,
          v as String,
        ),
      );

      a.forEach((k, v) {
        this.props.forEach((p) {
          this.methods.add(
                this.generateMethod('$p:${capitalizeFirstLetter(key)}:$k'),
              );
        });
      });
    });

    return Library(
      (l) => l.body.addAll([
        Directive.import('package:flutter/material.dart'),
        Directive.import('../raw/xcolors.dart'),
        this.generateClass(className, List.empty()),
      ]),
    );
  }

  @override
  Method generateMethod(String methodName) {
    List<String> _splitted = methodName.split(':');
    return Method((mt) => mt
      ..name = methodName.replaceAll(':', '')
      ..type = MethodType.getter
      ..returns = const Reference('T')
      ..body = Code('''
                        ${_splitted[0]}Color = XColors.${_splitted[1].toLowerCase()}.shade${_splitted[2]};
                        return _child;
                      '''));
  }
}
