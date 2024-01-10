import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/model/normal_user_model.dart';

abstract class INormalUserService {
  Future<List<NormalUserModel>?>? fetchUsers();
  Future<NormalUserModel?>? fetchProfile();
}
