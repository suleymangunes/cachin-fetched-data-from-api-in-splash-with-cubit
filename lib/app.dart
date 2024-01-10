import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_navigation_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: NormalNavigationPage(),
    );
  }
}
