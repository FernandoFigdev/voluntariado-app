import 'package:flutter/material.dart';
import '../models/user_subscriptions.dart';

class UserSubscriptionsScreen extends StatelessWidget {
  const UserSubscriptionsScreen({Key? key}) : super(key: key);

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
                'Você ainda não se inscreveu em nenhuma oportunidade.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: subscriptions.length,
              itemBuilder: (context, index) {
                final opportunity = subscriptions[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(opportunity.title),
                    subtitle: Text(opportunity.date),
                  ),
                );
              },
            ),
    );
  }
}
