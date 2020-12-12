import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  //Singleton: it has to be the same for all files that import it
  static AppController instance = AppController();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
