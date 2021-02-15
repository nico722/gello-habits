// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaginationStore on PaginationStoreBase, Store {
  Computed<int> _$currentPageComputed;

  @override
  int get currentPage =>
      (_$currentPageComputed ??= Computed<int>(() => super.currentPage,
              name: 'PaginationStoreBase.currentPage'))
          .value;
  Computed<PageController> _$pageControllerComputed;

  @override
  PageController get pageController => (_$pageControllerComputed ??=
          Computed<PageController>(() => super.pageController,
              name: 'PaginationStoreBase.pageController'))
      .value;

  final _$_currentPageAtom = Atom(name: 'PaginationStoreBase._currentPage');

  @override
  int get _currentPage {
    _$_currentPageAtom.reportRead();
    return super._currentPage;
  }

  @override
  set _currentPage(int value) {
    _$_currentPageAtom.reportWrite(value, super._currentPage, () {
      super._currentPage = value;
    });
  }

  final _$_pageControllerAtom =
      Atom(name: 'PaginationStoreBase._pageController');

  @override
  PageController get _pageController {
    _$_pageControllerAtom.reportRead();
    return super._pageController;
  }

  @override
  set _pageController(PageController value) {
    _$_pageControllerAtom.reportWrite(value, super._pageController, () {
      super._pageController = value;
    });
  }

  final _$PaginationStoreBaseActionController =
      ActionController(name: 'PaginationStoreBase');

  @override
  dynamic setCurrentPage(int value) {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase.setCurrentPage');
    try {
      return super.setCurrentPage(value);
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPageController(PageController value) {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase.setPageController');
    try {
      return super.setPageController(value);
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pageChanged(int page) {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase.pageChanged');
    try {
      return super.pageChanged(page);
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pageChanger(int page) {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase.pageChanger');
    try {
      return super.pageChanger(page);
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
pageController: ${pageController}
    ''';
  }
}
