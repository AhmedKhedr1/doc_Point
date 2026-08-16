import 'package:dio/dio.dart';
import 'package:doc_point/core/networking/api_service.dart';
import 'package:doc_point/core/networking/dio_factory.dart';
import 'package:doc_point/features/login/data/repos/login_repo.dart';
import 'package:doc_point/features/login/logic/logi_cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));
}
