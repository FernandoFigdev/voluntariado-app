import 'package:flutter/material.dart';
import '../utils/opportunity_data.dart';
import '../screens/event_detail_screen.dart';
import '../screens/user_subscriptions_screen.dart';


class EventListScreen extends StatelessWidget {
  const EventListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opportunities = getSampleOpportunities();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Oportunidades'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserSubscriptionsScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: opportunities.length,
        itemBuilder: (context, index) {
          final opportunity = opportunities[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(opportunity.title),
              subtitle: Text(opportunity.description),
              trailing: Text(opportunity.date),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EventDetailScreen(opportunity: opportunity),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
