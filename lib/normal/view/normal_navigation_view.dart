import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_page.dart';
import 'package:caching_fetched_data_from_api_in_splash_with_cubit/normal/view/normal_profile_page.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  const NormalPage(),
  const NormalProilePage(),
];

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int pageNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageNum],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageNum,
          onTap: (value) {
            setState(() {
              pageNum = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.gite_outlined), label: "gite"),
            BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined), label: "photo"),
          ]),
    );
  }
}
