import 'package:flutter/material.dart';
import 'package:letscode/tabs/first_tab.dart';
import 'package:letscode/tabs/second_tab.dart';
import 'package:letscode/tabs/third_tab.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TAB BAR'),
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.orangeAccent,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.orangeAccent,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //1st Tab
                  FirstTab(),

                  //2nd Tab
                  const SecondTab(),

                  //3rd Tab
                  const ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
