import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: CustomScrollView(
        slivers: [
          //sliver appbar
          SliverAppBar(
            leading: const Icon(Icons.menu),
            //title:const  Text('SLIVERAPPBAR'),
            expandedHeight: 300,
            floating: true, // appbar shows when stop scrolling
            pinned: false, // appbar dissapears when scrolling
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.blueAccent,
              ),
              title: const Text('SLIVERAPPBAR'),
              // background: Image.asset('name'),
            ),
          ),
          //sliver items
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
