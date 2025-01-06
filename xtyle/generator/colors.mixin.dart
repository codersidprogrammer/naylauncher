import 'package:code_builder/code_builder.dart';

class MixinsColorGenerator {
  Map<String, Map<String, dynamic>> json;
  String _colorField = 'colors';
  List<String> props = ['bg', 'text','icon', 'border'];

  MixinsColorGenerator({required this.json});

  Field _generateMixinField(String name) {
    return Field((f) => f
      ..late = true
      ..type = refer('Color?')
      ..name = name);
  }

  Method _generateColorMixinMethod(
      String section, String colorName, String shadeKey) {
    return Method((mt) => mt
      ..name = '$section$colorName$shadeKey'
      ..type = MethodType.getter
      ..returns = const Reference('T')
      ..body = Code('''
                        ${section}Color = XColors.${colorName}.shade${shadeKey};
                        return _child;
                      '''));
  }

  Method _generateConditionalMethod(
      String section) {
    return Method(
            (m) => m
          ..name = '${section}ColorIf'
          ..returns = const Reference('T')
          ..requiredParameters.add(
              Parameter(
                      (p) => p
                    ..name = 'condition'
                    ..type = refer('bool')
              )
          )
          ..requiredParameters.add(
              Parameter(
                      (p) => p
                    ..name = 'trueColor'
                    ..type = refer('Color')
              )
          )
          ..requiredParameters.add(
              Parameter(
                      (p) => p
                    ..name = 'falseColor'
                    ..type = refer('Color')
              )
          )
          ..body = Code(''' 
                          ${section}Color = condition ? trueColor : falseColor;
                          return _child;
                        ''')
    );
  }

  Mixin _generateColorClass(String name, List<Method> methods) {
    return Mixin((m) => m
      ..name = name
      ..fields.add(
          Field(
                  (f) => f
                ..late = true
                ..type = refer('late T')
                ..name = '_child'
          )
      )
      ..methods.add(
          Method(
                  (m) => m
                ..name = 'setChildColoring'
                ..requiredParameters.add(
                    Parameter(
                            (p) => p
                          ..name = 'child'
                          ..type = refer('T')
                    )
                )
                ..body = const Code(''' 
                          _child = child;
                        ''')
          )
      )
      ..methods.addAll(props.map((v) {
        return this._generateConditionalMethod(v);
      }))
      ..fields.addAll(props.map((v) {
        return this._generateMixinField('${v}Color');
      }))
      ..methods.addAll(methods),
    );
  }

  Library generateMixinColor(String mixinName) {
    Map<String, dynamic>? _colors = this.json[this._colorField];
    List<Method> _tempMethods = List.empty(growable: true);

    _colors?.forEach((key, value) {
      var a = (value as Map<String, dynamic>).map(
        (k, v) => MapEntry(
          k,
          v as String,
        ),
      );

      a.forEach((k, v) {
        this.props.forEach((p) {
          _tempMethods.add(
            this._generateColorMixinMethod(p, key, k),
          );
        });
      });
    });

    return Library(
      (l) => l.body.addAll([
        Directive.import('package:flutter/material.dart'),
        Directive.import('../raw/xcolors.dart'),
        this._generateColorClass(mixinName, _tempMethods),
      ]),
    );
  }
}
