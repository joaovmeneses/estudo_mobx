// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cnpjcontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CNPJ on _CNPJbase, Store {
  final _$idAtom = Atom(name: '_CNPJbase.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$cnpjAtom = Atom(name: '_CNPJbase.cnpj');

  @override
  String get cnpj {
    _$cnpjAtom.reportRead();
    return super.cnpj;
  }

  @override
  set cnpj(String value) {
    _$cnpjAtom.reportWrite(value, super.cnpj, () {
      super.cnpj = value;
    });
  }

  final _$_CNPJbaseActionController = ActionController(name: '_CNPJbase');

  @override
  dynamic changeCnpj(dynamic value) {
    final _$actionInfo =
        _$_CNPJbaseActionController.startAction(name: '_CNPJbase.changeCnpj');
    try {
      return super.changeCnpj(value);
    } finally {
      _$_CNPJbaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
cnpj: ${cnpj}
    ''';
  }
}
