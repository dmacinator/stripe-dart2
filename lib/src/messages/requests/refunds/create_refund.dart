part of '../../../../messages.dart';

/// https://stripe.com/docs/api/checkout/refunds/create
@JsonSerializable()
class CreateRefundRequest {
  /// A positive integer in cents representing how much of this charge to
  /// refund. Can refund only up to the remaining, unrefunded amount of the
  /// charge.
  final int? amount;

  /// The identifier of the charge to refund.
  final String? charge;

  /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  final String? currency;

  /// Customer whose customer balance to refund from.
  final String? customer;

  /// For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
  final String? instructionsEmail;

  /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  final Map<String, String>? metadata;

  /// ID of the PaymentIntent to refund.
  final String? paymentIntent;

  /// String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://stripe.com/docs/radar/lists), and will also help us improve our fraud detection algorithms.
  final RefundReason? reason;

  /// Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  final bool? refundApplicationFee;

  /// Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).
  ///
  /// A transfer can be reversed only by the application that created the charge.
  final bool? reverseTransfer;

  CreateRefundRequest(
      {this.amount,
      this.charge,
      this.currency,
      this.customer,
      this.instructionsEmail,
      this.metadata,
      this.paymentIntent,
      this.reason,
      this.refundApplicationFee,
      this.reverseTransfer});

  factory CreateRefundRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRefundRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRefundRequestToJson(this);
}
