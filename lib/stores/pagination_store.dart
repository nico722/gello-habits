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
}
