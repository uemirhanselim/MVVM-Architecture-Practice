import 'package:http/http.dart' as http;
import 'package:mvvmpractice/helper/constants.dart';
import 'package:mvvmpractice/model/user_model.dart';
import 'package:mvvmpractice/service/base/user_service.dart';

class UserService extends UserBaseServiceClass {
  Future<List<User>> getUserData() async {
    var api_url = Constants.API_URL;
    http.Response response = await http.get(Uri.parse(api_url));
    if (response.statusCode == 200) {
      print(response.body);
      return userModelFromJson(response.body);
    } else {
      throw Exception("${response.statusCode}");
    }
  }
}
