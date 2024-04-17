import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // instagram post
        Container(
          margin: const EdgeInsets.only(top: 40),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/82A3F07A-FC87-487D-8EE7-ACA4F88B26D4_1_105_c.jpeg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: 350,
        ),
        // name and caption
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 20),
              children: [
                TextSpan(
                    text: 'Giulia Danso',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                  text:
                      'This is a very long caption, it can contain eveerything you want to write',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
