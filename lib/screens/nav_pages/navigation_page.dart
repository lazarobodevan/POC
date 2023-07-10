import 'package:flutter/material.dart';
import 'package:poc/screens/nav_pages/calendar.dart';
import 'package:poc/screens/nav_pages/home.dart';
import 'package:poc/screens/nav_pages/profile.dart';
import 'package:poc/screens/nav_pages/progress.dart';
import 'package:poc/theme/theme.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  List pages = const [Home(), Calendar(), Progress(), Profile()];
  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: ThemeColors.primary1,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        iconSize: 30,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        items: const [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home, )),
          BottomNavigationBarItem(label: "Calendário",icon: Icon(Icons.calendar_month)),
          BottomNavigationBarItem(label: "Progresso",icon: Icon(Icons.auto_graph)),
          BottomNavigationBarItem(label: "Perfil",icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
