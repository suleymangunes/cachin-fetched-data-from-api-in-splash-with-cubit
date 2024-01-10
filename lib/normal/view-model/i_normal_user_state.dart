import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/core/enum/service_enum.dart';

abstract class INormalUserState {
  final ServiceEnum status;

  INormalUserState(this.status);
}
