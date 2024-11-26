import 'package:flutter/material.dart';
import '../models/opportunity.dart';
import '../models/user_subscriptions.dart';

class EventDetailScreen extends StatelessWidget {
  final Opportunity opportunity;

  const EventDetailScreen({Key? key, required this.opportunity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(opportunity.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              opportunity.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Data: ${opportunity.date}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              opportunity.description,
              style: const TextStyle(fontSize: 18),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  UserSubscriptions.addSubscription(opportunity);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Inscrição realizada!')),
                  );
                },
                child: const Text('Inscrever-se'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
