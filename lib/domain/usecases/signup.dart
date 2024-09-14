import 'package:bloc_auth/core/usecase/usecase.dart';
import 'package:bloc_auth/data/models/signup_req_params.dart';
import 'package:bloc_auth/domain/repositories/auth.dart';
import 'package:bloc_auth/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase implements Usecase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? param}) async {
    return sl<AuthRepository>().signup(
      param!,
    );
  }
}
