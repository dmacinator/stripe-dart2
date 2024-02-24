part of '../../../../messages.dart';

/// https://docs.stripe.com/api/payment_intents/list
@JsonSerializable()
class ListRefundsRequest {
  ///Only return refunds for the charge specified by this charge ID.

  final String? charge;

  /// Only return refunds for the PaymentIntent specified by this ID.

  final String? paymentIntent;

  ///A limit on the number of objects to be returned.
  ///Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  ListRefundsRequest({
    this.charge,
    this.paymentIntent,
    this.limit,
  });

  factory ListRefundsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListRefundsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListRefundsRequestToJson(this);
}
