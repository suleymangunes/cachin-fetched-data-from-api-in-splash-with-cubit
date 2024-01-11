// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/model/normal_user_model.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/service/i_normal_user_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/i_normal_user_state.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_state.dart';

class NormalUserCubit extends Cubit<INormalUserState> {
  final INormalUserService _normalUserService;
  NormalUserCubit(
    this._normalUserService,
  ) : super(NormalUserInitialState());

  DateTime? _lastFetchTime;

  Future<void> fetchUsers() async {
    print("bura cagriliyor mu ki");
    if (_lastFetchTime == null || (_lastFetchTime != null && DateTime.now().difference(_lastFetchTime!).inSeconds > 5)) {
      try {
        emit(NormalUserLoadingState());
        final List<NormalUserModel>? response = await _normalUserService.fetchUsers();
        if (response != null) {
          emit(NormalUserCompletedState(response, null));
        } else {
          NormalUserErrorState("Null error");
        }
      } catch (e) {
        if (e is DioException) {
          if (e.response != null) {
            emit(NormalUserDioErrorState(e));
          } else {
            emit(NormalUserDioErrorState(e));
          }
        } else {
          emit(NormalUserErrorState(e.toString()));
        }
      }
      _lastFetchTime = DateTime.now();
    }
  }
}

class ProfileNormalUserCubit extends Cubit<INormalUserState> {
  final INormalUserService _normalUserService;
  ProfileNormalUserCubit(
    this._normalUserService,
  ) : super(NormalUserInitialState());

  DateTime? _lastFetchTime;
  Future<void> fetchProfile() async {
    if (_lastFetchTime == null || (_lastFetchTime != null && DateTime.now().difference(_lastFetchTime!).inSeconds > 5)) {
      try {
        emit(NormalUserLoadingState());
        final NormalUserModel? response = await _normalUserService.fetchProfile();
        if (response != null) {
          emit(NormalUserCompletedState(null, response));
        } else {
          NormalUserErrorState("Null error");
        }
      } catch (e) {
        if (e is DioException) {
          if (e.response != null) {
            emit(NormalUserDioErrorState(e));
          } else {
            emit(NormalUserDioErrorState(e));
          }
        } else {
          emit(NormalUserErrorState(e.toString()));
        }
      }
      _lastFetchTime = DateTime.now();
    }
  }
}
