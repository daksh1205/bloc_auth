import 'package:bloc_auth/core/network/dio_client.dart';
import 'package:bloc_auth/data/repository/auth.dart';
import 'package:bloc_auth/data/source/auth_api_service.dart';
import 'package:bloc_auth/domain/repositories/auth.dart';
import 'package:bloc_auth/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  // Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // UseCases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
