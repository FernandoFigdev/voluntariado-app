import 'package:flutter/material.dart';
import '../models/user_subscriptions.dart';
import 'event_detail_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subscriptions = UserSubscriptions.getSubscriptions();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Inscrições'),
      ),
      body: subscriptions.isEmpty
          ? const Center(
              child: Text(
                'Você ainda não se inscreveu em nenhum evento.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: subscriptions.length,
              itemBuilder: (context, index) {
                final opportunity = subscriptions[index];
                return ListTile(
                  title: Text(opportunity.title),
                  subtitle: Text(opportunity.date),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EventDetailScreen(opportunity: opportunity),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
