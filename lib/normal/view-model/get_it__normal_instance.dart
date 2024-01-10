import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/service/normal_user_service.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/get_it_normal.dart';

mixin GetItNormalInstance {
  NormalUserService fetchUser() {
    return GetItNormal.getIt<NormalUserService>();
  }
}
