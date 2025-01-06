import 'dart:convert';

import 'generator/colors.generator.dart';
import 'generator/colors.mixin.generator.dart';
import 'generator/font-size.generator.dart';
import 'generator/font-size.mixin.generator.dart';
import 'generator/spacer.generator.dart';
import 'utilities/fs.util.dart';



void main() {
  FSUtil.ensureFolderExists('dist/raw');
  FSUtil.ensureFolderExists('dist/mixins');
  Map<String, Map<String, dynamic>> jsonData = FSUtil.readJsonConfig('xtyle.config.json');

  /// Colors generator
  ColorsGenerator colorGen = ColorsGenerator(baseJsonData: jsonData, selectorField: 'colors');
  FSUtil.generateCode(colorGen.generateLibrary('XColors'), 'dist/raw/xcolors.dart');
  ColorsMixinGenerator mixinsColorGenerator = ColorsMixinGenerator(baseJsonData: jsonData, selectorField: 'colors');
  FSUtil.generateCode(mixinsColorGenerator.generateLibrary('XColorMixin<T>'), 'dist/mixins/xcolors.mixin.dart');

  /// Font Size generator
  FontSizeGenerator fontSizeGen = FontSizeGenerator(baseJsonData: jsonData, selectorField: 'fontSizes');
  FSUtil.generateCode(fontSizeGen.generateLibrary('XFontSize'), 'dist/raw/xfontsize.dart');
  FontSizeMixinGenerator fontSizeMixinGenerator = FontSizeMixinGenerator(baseJsonData: jsonData, selectorField: 'fontSizes');
  FSUtil.generateCode(fontSizeMixinGenerator.generateLibrary('XFontSizeMixin<T>'), 'dist/mixins/xfontsize.mixin.dart');

  /// Spacer generator
  SpacerGenerator spacerGenerator = SpacerGenerator(baseJsonData: jsonData, selectorField: 'spacers');
  FSUtil.generateCode(spacerGenerator.generateLibrary('XSpacers'), 'dist/raw/xspacers.dart');

  // FSUtil.generateCode(sizeGen.generateSizes('XSpacers','spacers'), 'dist/raw/xspacers.dart');
  // FSUtil.generateCode(sizeGen.generateSizesAlias('XFontSize','fontSizes', 'text'), 'dist/raw/xfontsize.dart');
  //
  // FontSizesMixinGenerator fontSizesMixinGenerator = FontSizesMixinGenerator(json: jsonData);
  // FSUtil.generateCode(fontSizesMixinGenerator.generateMixinFontSize('XFontSizeMixin<T>'), 'dist/mixins/xfontsize.mixin.dart');
}