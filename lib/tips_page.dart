import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Tips'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Stay Motivated with These Tips',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TipCard(
            title: 'Stay Hydrated',
            description: 'Drink plenty of water before, during, and after workouts.',
          ),
          TipCard(
            title: 'Warm Up & Cool Down',
            description: 'Always warm up before exercises and cool down afterwards.',
          ),
          TipCard(
            title: 'Balance Your Diet',
            description: 'Fuel your body with a balanced diet to maximize performance.',
          ),
        ],
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  final String title;
  final String description;

  const TipCard({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
