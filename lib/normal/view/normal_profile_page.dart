import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/get_it__normal_instance.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_cubit.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalProilePage extends StatefulWidget with GetItNormalInstance {
  const NormalProilePage({super.key});

  @override
  State<NormalProilePage> createState() => _NormalProilePageState();
}

class _NormalProilePageState extends State<NormalProilePage> {
  @override
  void initState() {
    print("profil sayfasına girildi");
    context.read<ProfileNormalUserCubit>().fetchProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const NormalProfileView();
  }
}
