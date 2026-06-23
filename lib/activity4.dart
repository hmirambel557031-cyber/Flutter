import 'package:flutter/material.dart';

class Activity4 extends StatelessWidget {
  const Activity4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mirambel_activity4')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Keeps text on the far left
          children: [
            const Text(
              'crossAxisAlignment.start',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
