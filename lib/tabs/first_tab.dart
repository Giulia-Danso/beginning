import 'package:flutter/material.dart';
import 'package:letscode/tabs/circle.dart';
import 'package:letscode/tabs/square.dart';

class FirstTab extends StatelessWidget {
  FirstTab({super.key});
  final List _post = [
    'post 1',
    'post 2',
    'post 3',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //instagram stories
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircle(
                  child: _stories[index],
                );
              },
            ),
          ),

          // instagram posts

          Expanded(
            child: ListView.builder(
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _post[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
