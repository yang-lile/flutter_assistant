import 'package:flutter/material.dart';

GlobalDatas? globalDatas;

class GlobalDatas extends InheritedModel<String> {
  GlobalDatas({
    this.baseStyle,
    this.numberStyle,
    this.commentStyle,
    this.keywordStyle,
    this.stringStyle,
    this.punctuationStyle,
    this.classStyle,
    this.constantStyle,
    Key? key,
  }) : super(
          key: key,
          child: SizedBox(),
        );

  final TextStyle? baseStyle;
  final TextStyle? numberStyle;
  final TextStyle? commentStyle;
  final TextStyle? keywordStyle;
  final TextStyle? stringStyle;
  final TextStyle? punctuationStyle;
  final TextStyle? classStyle;
  final TextStyle? constantStyle;

  static GlobalDatas? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobalDatas>();
  }

  @override
  bool updateShouldNotify(GlobalDatas oldWidget) =>
      oldWidget.baseStyle != baseStyle ||
      oldWidget.numberStyle != numberStyle ||
      oldWidget.commentStyle != commentStyle ||
      oldWidget.keywordStyle != keywordStyle ||
      oldWidget.stringStyle != stringStyle ||
      oldWidget.punctuationStyle != punctuationStyle ||
      oldWidget.classStyle != classStyle ||
      oldWidget.constantStyle != constantStyle;

  @override
  bool updateShouldNotifyDependent(GlobalDatas oldWidget, Set dependencies) {
    if (dependencies.contains(baseStyle) && baseStyle != oldWidget.baseStyle) {
      return true;
    } else if (dependencies.contains(numberStyle) &&
        numberStyle != oldWidget.numberStyle) {
      return true;
    } else if (dependencies.contains(commentStyle) &&
        commentStyle != oldWidget.commentStyle) {
      return true;
    } else if (dependencies.contains(keywordStyle) &&
        keywordStyle != oldWidget.keywordStyle) {
      return true;
    } else if (dependencies.contains(stringStyle) &&
        stringStyle != oldWidget.stringStyle) {
      return true;
    } else if (dependencies.contains(punctuationStyle) &&
        punctuationStyle != oldWidget.punctuationStyle) {
      return true;
    } else if (dependencies.contains(classStyle) &&
        classStyle != oldWidget.classStyle) {
      return true;
    } else if (dependencies.contains(constantStyle) &&
        constantStyle != oldWidget.constantStyle) {
      return true;
    }
    return false;
  }
}
