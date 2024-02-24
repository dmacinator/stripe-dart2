import 'dart:async';

import 'package:logging/logging.dart';
import 'package:stripe2/messages.dart';

import '_resource.dart';

final log = Logger('Stripe PaymentIntentResource');

class PaymentIntentResource extends Resource<PaymentIntent> {
  PaymentIntentResource(super.client);

  Future<PaymentIntent> create(CreatePaymentIntentRequest request) async {
    final response = await post('payment_intents', data: request.toJson());
    return PaymentIntent.fromJson(response);
  }

  Future<PaymentIntent> update(UpdatePaymentIntentRequest request) async {
    final response =
        await post('payment_intents/${request.id}', data: request.toJson());
    return PaymentIntent.fromJson(response);
  }

  Future<PaymentIntent> retrieve(String paymentIntentId) async {
    final map = await get('payment_intents/$paymentIntentId');
    return PaymentIntent.fromJson(map);
  }

  Future<DataList<PaymentIntent>> list(
      [ListPaymentIntentsRequest? request]) async {
    final map = await get('customers', queryParameters: request?.toJson());
    return DataList<PaymentIntent>.fromJson(
        map, (value) => PaymentIntent.fromJson(value as Map<String, dynamic>));
  }

  /// Returns true if successful.
  Future<bool> cancel(String paymentIntentId) async {
    try {
      await post('payment_intents/$paymentIntentId/cancel');
    } catch (e) {
      log.warning(e);
      return false;
    }
    return true;
  }
}
