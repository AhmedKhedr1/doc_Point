import 'package:dio/dio.dart';
import 'package:doc_point/core/networking/api_service.dart';
import 'package:doc_point/core/networking/dio_factory.dart';
import 'package:doc_point/features/login/data/repos/login_repo.dart';
import 'package:doc_point/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doc_point/features/signup/data/repos/sign_up_repo.dart';
import 'package:doc_point/features/signup/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));
  //signup
  getit.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));
  
}
