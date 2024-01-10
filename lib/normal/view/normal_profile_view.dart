import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/core/enum/service_enum.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/model/normal_user_model.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/i_normal_user_state.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_cubit.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_state.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalProfileView extends StatelessWidget {
  const NormalProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: BlocBuilder<NormalUserCubit, INormalUserState>(
        builder: (context, state) {
          switch (state.status) {
            case ServiceEnum.initial:
              return const CircularProgressCentered();
            case ServiceEnum.loading:
              return const CircularProgressCentered();
            case ServiceEnum.completed:
              if (state is NormalUserCompletedState) {
                final NormalUserModel? profile = state.profile;
                return Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      CircleAvatar(
                        minRadius: 50,
                        maxRadius: 60,
                        backgroundImage: NetworkImage(
                          profile?.avatar ??
                              "https://static.vecteezy.com/system/resources/thumbnails/020/911/732/small/profile-icon-avatar-icon-user-icon-person-icon-free-png.png",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(profile?.name ?? ""),
                    ],
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }

            case ServiceEnum.error:
              return const Text("error");
          }
        },
      ),
    );
  }
}
