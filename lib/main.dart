import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/activity_page.dart';
import 'pages/auth_page.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_sharp),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_soccer_sharp),
            label: 'Activités',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Mon compte',
          ),
        ],
      ),

      
      body: <Widget>[
        /// Home page
        HomePage(),
       

        /// Activity page
        ActivityPage(),
        

        
        /// Messages page
        
        AuthPage(),
        
      ][currentPageIndex],
    );
  }
}
