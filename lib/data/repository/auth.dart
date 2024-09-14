import 'package:bloc_auth/data/models/signup_req_params.dart';
import 'package:bloc_auth/data/source/auth_api_service.dart';
import 'package:bloc_auth/domain/repositories/auth.dart';
import 'package:bloc_auth/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(SignupReqParams signupReq) {
    return sl<AuthApiService>().signup(signupReq);
  }
}
