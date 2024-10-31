import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Plans'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Choose a Workout Plan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // Example workout list
          WorkoutCard(
            title: 'Full Body Workout',
            description: 'A balanced workout covering all muscle groups.',
          ),
          WorkoutCard(
            title: 'Upper Body Strength',
            description: 'Focus on upper body with strength exercises.',
          ),
          WorkoutCard(
            title: 'Core & Abs',
            description: 'Strengthen your core with focused exercises.',
          ),
        ],
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  final String title;
  final String description;

  const WorkoutCard({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: IconButton(
          icon: const Icon(Icons.play_circle_fill),
          onPressed: () {
            // Navigate to workout session or video
          },
        ),
      ),
    );
  }
}
