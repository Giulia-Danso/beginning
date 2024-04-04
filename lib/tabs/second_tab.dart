import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text(
          '2nd TAB',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
