import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class SubscriptionResource extends Resource<Subscription> {
  SubscriptionResource(super.client);

  Future<Subscription> retrieve(String id) async {
    final response = await get('subscription/$id');
    return Subscription.fromJson(response);
  }

  Future<DataList<Subscription>> list(
      [ListSubscriptionsRequest? request]) async {
    final map = await get('subscriptions', queryParameters: request?.toJson());
    return DataList<Subscription>.fromJson(
        map, (value) => Subscription.fromJson(value as Map<String, dynamic>));
  }
}
