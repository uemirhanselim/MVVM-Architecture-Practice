import 'package:flutter/material.dart';
import 'package:mvvmpractice/model/user_model.dart';
import 'package:mvvmpractice/helper/locator.dart';
import 'package:mvvmpractice/repository/user_repository.dart';

class HomeViewModel extends ChangeNotifier {
  UserRepository userRepository = locator<UserRepository>();
  bool _loading = false;
  List<User?>? _usersModelList = [];

  HomeViewModel() {
    getUsers();
  }

  bool get loading => _loading;
  List<User?>? get userModelList => _usersModelList;

  setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  setUsersListModel(List<User?>? usersModelList) {
    _usersModelList = usersModelList;
  }

  getUsers() async {
    setLoading(true);
    var response = await userRepository.getUserData();
    setUsersListModel(response);
    setLoading(false);
  }
}
