import 'package:flutter/material.dart';

class Activity4 extends StatelessWidget {
  const Activity4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MainAxisAlignment.center',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
