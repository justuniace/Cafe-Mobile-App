
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CurrentUser with ChangeNotifier {
  late Map<String, dynamic>? _currentUser = {};
  
  Map<String, dynamic>? get currentUser => _currentUser;

  setUser(Map<String, dynamic>? user){
    _currentUser = user;
    notifyListeners();
  }
}
