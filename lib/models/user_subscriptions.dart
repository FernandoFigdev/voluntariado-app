import '../models/opportunity.dart';

class UserSubscriptions {
  static final List<Opportunity> _subscriptions = [];

  static void addSubscription(Opportunity opportunity) {
    if (!_subscriptions.contains(opportunity)) {
      _subscriptions.add(opportunity);
    }
  }

  static List<Opportunity> getSubscriptions() {
    return _subscriptions;
  }
}
