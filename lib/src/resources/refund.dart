import 'dart:async';

import 'package:stripe2/messages.dart';
import 'package:logging/logging.dart';
import '_resource.dart';

final log = Logger('Stripe RefundsResource');

class RefundResource extends Resource<Refund> {
  RefundResource(super.client);

  ///When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.
  ///
  ///Creating a new refund will refund a charge that has previously been created but not yet refunded. Funds will be refunded to the credit or debit card that was originally charged.
  ///
  ///You can optionally refund only part of a charge. You can do so multiple times, until the entire charge has been refunded.
  ///
  ///Once entirely refunded, a charge can’t be refunded again. This method will return an error when called on an already-refunded charge, or when trying to refund more money than is left on a charge.

  Future<Refund> create(CreateRefundRequest request) async {
    final map = await post('refunds', data: request.toJson());
    return Refund.fromJson(map);
  }

  ///Retrieves the details of an existing refund.

  Future<Refund> retrieve(String refundId) async {
    final map = await get('refunds/$refundId');
    return Refund.fromJson(map);
  }

  ///Returns a list of all refunds you created.
  ///We return the refunds in sorted order, with the most recent refunds appearing first
  ///The 10 most recent refunds are always available by default on the Charge object.

  Future<DataList<Refund>> list([ListRefundsRequest? request]) async {
    final map = await get('refunds', queryParameters: request?.toJson());
    return DataList<Refund>.fromJson(
        map, (value) => Refund.fromJson(value as Map<String, dynamic>));
  }

  ///Cancels a refund with a status of requires_action.
  ///
  ///You can’t cancel refunds in other states. Only refunds for
  ///payment methods that require customer action can enter the requires_action state.

  Future<bool> cancel(String refundId) async {
    try {
      await post('refunds/$refundId/cancel');
    } catch (e) {
      log.warning(e);
      return false;
    }
    return true;
  }
}
