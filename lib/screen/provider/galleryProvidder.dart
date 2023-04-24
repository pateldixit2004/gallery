import 'package:flutter/cupertino.dart';

class galleryProvider extends ChangeNotifier
{
  int seclectindex=0;
  void changeIndex(int index)
  {
    seclectindex=index;
    notifyListeners();
  }
}