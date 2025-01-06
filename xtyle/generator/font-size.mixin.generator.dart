import 'package:code_builder/code_builder.dart';

import 'base.generator.dart';

class FontSizeMixinGenerator extends BaseGenerator<Mixin> {
  @override
  Map<String, Map<String, dynamic>> baseJsonData;

  @override
  String selectorField;
  List<Method> methods = List.empty(growable: true);

  FontSizeMixinGenerator({required this.baseJsonData, required this.selectorField});

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
          ..name = 'setChildFontSizing'
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'child'
            ..type = refer('T')))
          ..body = const Code('''
                          _child = child;
                        ''')))
        ..fields.add(this.generateFieldWithStringVal('textSize', ''))
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
      ..type = refer('double?')
      ..name = name);
  }

  @override
  Library generateLibrary(String className) {
    Map<String, dynamic>? _data = this.baseJsonData[this.selectorField];

    _data?.forEach((key, value) {
      this.methods.add(
        this.generateMethod(key),
      );
    });

    return Library(
          (l) => l.body.addAll([
        Directive.import('../raw/xfontsize.dart'),
        this.generateClass(className, List.empty()),
      ]),
    );
  }

  @override
  Method generateMethod(String methodName) {
    return Method((mt) => mt
      ..name = 'text${methodName == 'DEFAULT' ? capitalizeFirstLetter('base') : capitalizeFirstLetter(methodName)}'
      ..type = MethodType.getter
      ..returns = const Reference('T')
      ..body = Code('''
                        textSize = XFontSize.${methodName == 'DEFAULT' ? 'base' : 'text$methodName'};
                        return _child;
                      '''));
  }

}