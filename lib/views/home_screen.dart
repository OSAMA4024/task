import 'package:animation_2/views/screen/game_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/home_tab.dart';
import '../view_models/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: homeViewModel.bottomIndex,
        children: const [
          HomeTab(),
          GameTab(),
          //Center(child: Text("Game Page")),
          Center(child: Text("Shop Page")),
          Center(child: Text("History Page")),
          Center(child: Text("Menu Page")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeViewModel.bottomIndex,
        onTap: (index) => homeViewModel.setBottomIndex(index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/IMG-20250821-WA0029.jpg", width: 44),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/IMG-20250821-WA0030.jpg", width: 44),
            label: "Game",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/IMG-20250821-WA0027.jpg", width: 44),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/IMG-20250821-WA0032.jpg", width: 44),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/IMG-20250821-WA0028.jpg", width: 44),
            label: "Menu",
          ),
        ],
      ),
    );
  }
}
