
import 'package:flutter/cupertino.dart';

class AnimationLoading with ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  changeState() {
    _isLoading = false;
    notifyListeners();
  }
}
