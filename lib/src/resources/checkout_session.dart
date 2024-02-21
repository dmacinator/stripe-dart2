import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class CheckoutSessionResource extends Resource<CheckoutSession> {
  CheckoutSessionResource(super.client);

  /// Creates a Stripe Checkout Session.
  Future<CheckoutSession> create(CreateCheckoutSessionRequest request) async {
    final response = await post('checkout/sessions', data: request.toJson());
    return CheckoutSession.fromJson(response);
  }

  Future<CheckoutSession> retrieve(String id) async {
    final response = await get('checkout/sessions/$id');
    return CheckoutSession.fromJson(response);
  }
}
