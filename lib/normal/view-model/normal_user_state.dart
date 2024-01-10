import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/core/enum/service_enum.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/model/normal_user_model.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/i_normal_user_state.dart';
import 'package:dio/dio.dart';

class NormalUserInitialState extends INormalUserState {
  NormalUserInitialState() : super(ServiceEnum.initial);
}

class NormalUserLoadingState extends INormalUserState {
  NormalUserLoadingState() : super(ServiceEnum.loading);
}

class NormalUserCompletedState extends INormalUserState {
  NormalUserCompletedState(this.users, this.profile) : super(ServiceEnum.completed);
  final List<NormalUserModel>? users;
  final NormalUserModel? profile;
}

class NormalUserErrorState extends INormalUserState {
  NormalUserErrorState(this.error) : super(ServiceEnum.error);
  final String? error;
}

class NormalUserDioErrorState extends INormalUserState {
  final DioException dioException;
  NormalUserDioErrorState(this.dioException) : super(ServiceEnum.error);
}
