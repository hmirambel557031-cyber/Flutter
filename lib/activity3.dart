import 'package:flutter/material.dart';

class Activity3 extends StatelessWidget {
  const Activity3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mirambel_activity3')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // EdgeInsets.all(30)
            Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'EdgeInsets.all(30)',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // EdgeInsets.symmetric(horizontal: 40, vertical: 10)
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: const Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 10,
                  right: 5,
                  bottom: 20,
                ),
                child: const Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // EdgeInsets.fromLTRB(10, 20, 30, 40)
            Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: const Text(
                  'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
