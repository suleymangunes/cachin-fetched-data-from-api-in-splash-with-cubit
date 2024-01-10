import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/model/normal_user_model.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/service/i_normal_user_service.dart';
import 'package:dio/dio.dart';

class NormalUserService extends INormalUserService {
  final Dio _dio;

  NormalUserService(this._dio);

  @override
  Future<List<NormalUserModel>?>? fetchUsers() async {
    final response = await _dio.get("https://659e7e3447ae28b0bd35f9be.mockapi.io/users");

    if (response.data is List) {
      final normalUserModels = (response.data as List).map((e) => NormalUserModel.fromJson(e)).toList();
      return normalUserModels;
    }
    return null;
  }

  @override
  Future<NormalUserModel?>? fetchProfile() async {
    final response = await _dio.get("https://659e7e3447ae28b0bd35f9be.mockapi.io/profile");

    if (response.data is List) {
      final normalUserModels = (response.data as List).map((e) => NormalUserModel.fromJson(e)).toList();
      return normalUserModels.first;
    }
    return null;
  }
}
