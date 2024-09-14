import 'package:bloc_auth/core/network/dio_client.dart';
import 'package:bloc_auth/data/source/auth_api_service.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  // Service
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());
}
