import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/get_it__normal_instance.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view-model/normal_user_cubit.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalPage extends StatefulWidget with GetItNormalInstance {
  const NormalPage({super.key});

  @override
  State<NormalPage> createState() => _NormalPageState();
}

class _NormalPageState extends State<NormalPage> {
  @override
  void initState() {
    print("fetch user calisti");
    context.read<NormalUserCubit>().fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const NormalView();
  }
}
