import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{
int _currentPage = 0;
int get getCurrentPage=> _currentPage;

void setPage(int page){
  _currentPage = page;
  notifyListeners();
}
}