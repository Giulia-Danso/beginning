import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:letscode/pages/first_page.dart';
import 'package:letscode/pages/fourth_page.dart';
import 'package:letscode/pages/second_page.dart';
import 'package:letscode/pages/sixth_page.dart';
import 'package:letscode/pages/third_page.dart';

import 'pages/fitfth_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Center(
      child: Text(
        'homepage',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'likes',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'search',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'settings',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 8,
        title: const Text(
          'APPBAR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          color: Colors.grey,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.abc),
                title: const Text(
                  'Page 1',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // navigate to a different page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.abc),
                title: const Text(
                  'Page 2',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // navigate to a different page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.abc),
                title: const Text(
                  'Page 3',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // navigate to a different page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.abc),
                title: const Text(
                  'Page 4',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // navigate to a different page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FourthPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.abc),
                title: const Text(
                  'Page 5 (TIMER)',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // navigate to a different page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FifthPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.abc),
                title: const Text(
                  'Page 6 (PAGEVIEW)',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // navigate to a different page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SixthPage()));
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
