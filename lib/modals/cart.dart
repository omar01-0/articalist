import 'package:flutter/material.dart';
import 'newsModal.dart';

class Cart with ChangeNotifier{
  List<Articles> _bookmarkedArticles=[];

  void bookmark(Articles article){
    _bookmarkedArticles.add(article);
    notifyListeners();
  }

  void removeBookmark(Articles article){
    _bookmarkedArticles.remove(article);
    notifyListeners();
  }

  List get getBookmarkList => _bookmarkedArticles;

  int get getLength => _bookmarkedArticles.length;

}