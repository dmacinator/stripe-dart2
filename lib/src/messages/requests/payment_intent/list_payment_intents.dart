part of '../../../../messages.dart';

/// https://docs.stripe.com/api/payment_intents/list
@JsonSerializable()
class ListPaymentIntentsRequest {
  ///Only return PaymentIntents for the customer that this customer ID specifies.
  final String? customer;
//A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  ListPaymentIntentsRequest({
    this.customer,
    this.limit,
  });

  factory ListPaymentIntentsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPaymentIntentsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListPaymentIntentsRequestToJson(this);
}
