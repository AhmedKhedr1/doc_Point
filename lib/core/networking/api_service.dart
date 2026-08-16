import 'package:dio/dio.dart';
import 'package:doc_point/core/networking/api_constants.dart';
import 'package:doc_point/features/login/data/models/login_request_body.dart';
import 'package:doc_point/features/login/data/models/login_response_body.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
factory ApiService (Dio dio,{String baseUrl})=_ApiService;
@POST(ApiConstants.login)
Future<LoginResponseBody>login(
  @Body() LoginRequestBody loginRequestBody,
);
}