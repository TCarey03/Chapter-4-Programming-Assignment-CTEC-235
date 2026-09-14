import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Digital Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ProfileHeader(),

              const SizedBox(height: 24),

              const InfoCard(
                title: 'Contact Information',
                label: 'Email',
                value: 'tyler@example.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for the profile image, name, and subtitle
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/Patrick.jpg',
          width: 200,
          height: 200,
        ),

        const SizedBox(height: 16),

        const Text(
          'Tyler Carey',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

// Reusable widget for displaying information
class InfoCard extends StatelessWidget {
  final String title;
  final String label;
  final String value;

  const InfoCard({
    super.key,
    required this.title,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      color: Colors.blueGrey[100],
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$label: ',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(value),
            ],
          ),
        ],
      ),
    );
  }
}
