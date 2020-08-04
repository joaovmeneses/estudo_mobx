// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formControl.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Form on _FormBase, Store {
  final _$idAtom = Atom(name: '_FormBase.id');

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

  final _$razao_socialAtom = Atom(name: '_FormBase.razao_social');

  @override
  String get razao_social {
    _$razao_socialAtom.reportRead();
    return super.razao_social;
  }

  @override
  set razao_social(String value) {
    _$razao_socialAtom.reportWrite(value, super.razao_social, () {
      super.razao_social = value;
    });
  }

  final _$cnpjAtom = Atom(name: '_FormBase.cnpj');

  @override
  List<Cnpj> get cnpj {
    _$cnpjAtom.reportRead();
    return super.cnpj;
  }

  @override
  set cnpj(List<Cnpj> value) {
    _$cnpjAtom.reportWrite(value, super.cnpj, () {
      super.cnpj = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
razao_social: ${razao_social},
cnpj: ${cnpj}
    ''';
  }
}
