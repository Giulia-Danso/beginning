import 'package:flutter/material.dart';
import 'package:letscode/pages/page6posts/post_1.dart';
import 'package:letscode/pages/page6posts/post_2.dart';
import 'package:letscode/pages/page6posts/post_3.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
