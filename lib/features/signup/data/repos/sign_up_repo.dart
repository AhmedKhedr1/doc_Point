import 'package:doc_point/core/networking/api_error_handler.dart';
import 'package:doc_point/core/networking/api_result.dart';
import 'package:doc_point/core/networking/api_service.dart';
import 'package:doc_point/features/signup/data/models/sign_up_request_body.dart';
import 'package:doc_point/features/signup/data/models/sign_up_response_body.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponseBody>> signup(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
