// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_controller_widget.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CatalogControllerWidget on _CatalogControllerWidgetBase, Store {
  late final _$stateAtom =
      Atom(name: '_CatalogControllerWidgetBase.state', context: context);

  @override
  AppState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(AppState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$_CatalogControllerWidgetBaseActionController =
      ActionController(name: '_CatalogControllerWidgetBase', context: context);

  @override
  void load() {
    final _$actionInfo = _$_CatalogControllerWidgetBaseActionController
        .startAction(name: '_CatalogControllerWidgetBase.load');
    try {
      return super.load();
    } finally {
      _$_CatalogControllerWidgetBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
