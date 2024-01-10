import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/core/enum/service_enum.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/model/normal_user_model.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/i_normal_user_state.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_cubit.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalView extends StatelessWidget {
  const NormalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Users"),
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
                final List<NormalUserModel>? users = state.users;
                return ListView.builder(
                  itemCount: users?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            users?[index].avatar ??
                                "https://static.vecteezy.com/system/resources/thumbnails/020/911/732/small/profile-icon-avatar-icon-user-icon-person-icon-free-png.png",
                          ),
                        ),
                        title: Text(users?[index].name ?? "Not Found"),
                        trailing: Text(users?[index].id ?? "Not Found"),
                      ),
                    );
                  },
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

class CircularProgressCentered extends StatelessWidget {
  const CircularProgressCentered({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
