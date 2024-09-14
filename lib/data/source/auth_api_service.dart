import 'package:bloc_auth/core/constants/api_urls.dart';
import 'package:bloc_auth/core/network/dio_client.dart';
import 'package:bloc_auth/data/models/signup_req_params.dart';
import 'package:bloc_auth/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthApiService {
  Future<Either> signup(SignupReqParams signupReq);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signup(SignupReqParams signupReq) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrls.register,
        data: signupReq.toMap(),
      );
      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
