import 'package:eatos/logic/eat_os_logic.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

serviceLocator()
{
  locator.registerLazySingleton(() => DashboardBLoC());
}