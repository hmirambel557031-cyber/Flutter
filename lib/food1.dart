import 'package:flutter/material.dart';

class Food1 extends StatelessWidget {
  const Food1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mirambel_activity1')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 200,

              child: Image.asset(
                'assets/images/adobo.jpg',
                height: 200,
                width: 200,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food: Adobo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Adobo is a popular Filipino dish made with meat, seafood, or vegetables marinated in vinegar, soy sauce, garlic, and spices, then simmered until tender. It is often served with rice and is known for its rich and savory flavor.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(child: buildRatingRow()),
            SizedBox(height: 15),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            index < 4 ? Icons.star : Icons.star_border,
            color: Colors.amber,
            size: 24,
          ),
        ),
      ),
    );
  }

  Widget buildIconTab(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 20),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(value),
      ],
    );
  }

  Widget buildRowTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconTab(Icons.schedule, 'Prep', '30 min'),
        buildIconTab(Icons.restaurant, 'Cook', '45 min'),
        buildIconTab(Icons.people_alt_outlined, 'Share', '4 person'),
      ],
    );
  }
}
