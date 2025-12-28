import 'package:flutter/material.dart';
import 'package:tutorials/pages/home_page.dart';
import 'package:tutorials/pages/profile_page.dart';
import 'package:tutorials/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedPage = 0;

  final List<Widget> pageList = [HomePage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'), centerTitle: true),
      drawer: Drawer(
        backgroundColor: Colors.pink[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.monitor_heart, size: 100, color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'homepage');
              },
              title: Text('H O M E'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'settingsPage');
              },
              title: Text('S E T T I N G S', style: TextStyle()),
            ),
          ],
        ),
      ),
      //byList
      body: pageList.elementAt(selectedPage),
      //bottom navigationbar
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            selectedPage = value;
          });
        },
        selectedIndex: selectedPage,
      ),
    );
  }
}
