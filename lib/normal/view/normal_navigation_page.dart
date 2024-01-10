import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/get_it__normal_instance.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_cubit.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalNavigationPage extends StatelessWidget with GetItNormalInstance {
  const NormalNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => NormalUserCubit(fetchUser())..fetchProfile(),
      )
    ], child: const NavigationView());
  }
}
