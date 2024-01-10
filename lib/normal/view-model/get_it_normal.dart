import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/service/normal_user_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class GetItNormal {
  factory GetItNormal() {
    return _singleton;
  }

  GetItNormal._internal();

  static final GetItNormal _singleton = GetItNormal._internal();

  static final getIt = GetIt.instance;

  static final Map<String, String> _headerJson = {
    'content-type': 'application/json',
    'accept': 'application/json',
  };

  static const String _baseUrl = 'https://659e7e3447ae28b0bd35f9be.mockapi.io/';

  static final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl, headers: _headerJson));

  static void setup() {
    getIt.registerSingleton<NormalUserService>(NormalUserService(_dio));
  }
}
