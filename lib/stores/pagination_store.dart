import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'pagination_store.g.dart';

class PaginationStore = PaginationStoreBase with _$PaginationStore;

abstract class PaginationStoreBase with Store {
  @observable
  int _currentPage = 0;

  @observable
  PageController _pageController = PageController();

  @computed
  int get currentPage => _currentPage;

  @computed
  PageController get pageController => _pageController;

  @action
  setCurrentPage(int value) {
    _currentPage = value;
  }

  @action
  setPageController(PageController value) {
    _pageController = value;
  }

  @action
  pageChanged(int page) {
      _currentPage = page;
  }

  @action
  Future pageChanger(int page) async{
      await _pageController.animateToPage(page,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
      _currentPage = page;
  }
}
