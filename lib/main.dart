import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/auth_page.dart';
import 'pages/contact_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    AuthPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Octo_Loupe.png'),
              radius: 20,
            ),
            const SizedBox(width: 10),
            const Text(
              'Octo\'Loupe',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF5B59B4),
        toolbarHeight: 70,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF5D71FF),
              Color(0xFFF365C7),
            ],
          ),
        ),
        child: pages[currentPageIndex],
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF5B59B4),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 'Accueil', 0),
            _buildNavItem(Icons.account_circle_sharp, 'Mon compte', 1),
            _buildNavItem(Icons.mail_sharp, 'Contact', 2),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPageIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: currentPageIndex == index ? const Color(0xFFF9BC50) : Colors.white),
          Text(
            label,
            style: TextStyle(
              color: currentPageIndex == index ? const Color(0xFFF9BC50) : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}