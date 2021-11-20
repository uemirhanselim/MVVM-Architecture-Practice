import 'package:mvvmpractice/base/user_service_base.dart';
import 'package:mvvmpractice/helper/locator.dart';
import 'package:mvvmpractice/model/user_model.dart';
import 'package:mvvmpractice/service/user_service.dart';

class UserRepository implements UserServiceBase {
  final UserService _service = locator<UserService>();

  @override
  Future<List<User?>?> getUserData() async {
    return await _service.getUserData();
  }
}
