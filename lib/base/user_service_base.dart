import 'package:mvvmpractice/model/user_model.dart';

abstract class UserServiceBase {
  Future<List<User?>?> getUserData();
}
