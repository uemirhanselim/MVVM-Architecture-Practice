import 'package:get_it/get_it.dart';
import 'package:mvvmpractice/repository/user_repository.dart';
import 'package:mvvmpractice/service/user_service.dart';
import 'package:mvvmpractice/view_model/home_view_model.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => UserRepository());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => HomeViewModel());
}
