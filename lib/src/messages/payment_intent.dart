part of '../../messages.dart';

// ignore: constant_identifier_names
enum PaymentIntentObject { payment_intent }

enum IntentStatus {
  requiresPaymentMethod,
  requiresConfirmation,
  requiresAction,
  processing,
  requiresCapture,
  canceled,
  succeeded
}

enum CancellationReason {
  abandoned,
  automatic,
  duplicate,
  failedInvoice,
  fraudulent,
  requestedByCustomer,
  voidInvoice
}

enum CaptureMethod { automatic, automaticAsync, manual }

enum ConfirmationMethod { automatic, manual }

/// https://stripe.com/docs/api/payment_intents/object
@JsonSerializable()
class PaymentIntent extends Message {
  /// String representing the object's type. Objects of the same type share the same value.
  final PaymentIntentObject object;

  /// Unique identifier for the object.
  final String id;

  /// Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  final int amount;

  /// Amount that can be captured from this PaymentIntent.
  final int amountCapturable;
  //Details about items that the amount includes: AmountDetailsTip "Portion of the amount that corresponds to a tip."
  final AmountDetails? amountDetails;

  /// Amount that this PaymentIntent collects.
  final int amountReceived;

  /// ID of the Connect application that created the PaymentIntent.
  final String? application;

  /// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
  final int? applicationFeeAmount;

  /// Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
  final AutomaticPaymentMethods automaticPaymentMethods;

  /// Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.

  @TimestampConverter()
  final DateTime? canceledAt;

  /// Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, or `automatic`).
  final CancellationReason? cancellationReason;

  /// Controls when the funds will be captured from the customer's account.
  final CaptureMethod captureMethod;

  /// The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.
  ///
  /// The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
  ///
  /// Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
  final String clientSecret;

  /// Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
  final ConfirmationMethod confirmationMethod;

  /// Time at which the object was created. Measured in seconds since the Unix epoch.
  @TimestampConverter()
  final DateTime? created;

  /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  final String currency;

  /// ID of the Customer this PaymentIntent belongs to, if one exists.
  ///
  /// Payment methods attached to other Customers cannot be used with this PaymentIntent.
  ///
  /// If present in combination with [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage), this PaymentIntent's payment method will be attached to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete.
  final String? customer;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// ID of the invoice that created this PaymentIntent, if it exists.
  final String? invoice;

  final String? latestCharge;

  final Map<String, String> metadata;

  /// The account (if any) for which the funds of the PaymentIntent are intended. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
  final String? onBehalfOf;

  /// ID of the payment method used in this PaymentIntent.
  final String? paymentMethod;

  /// The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
  final Set<PaymentMethodType>? paymentMethodTypes;

  /// Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  final String? receiptEmail;

  /// ID of the review associated with this PaymentIntent, if any.
  final String? review;

  /// Indicates that you intend to make future payments with this PaymentIntent's payment method.
  ///
  /// Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
  ///
  /// When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
  final SetupFutureUsage? setupFutureUsage;

  /// Shipping information for this PaymentIntent.
  final ShippingSpecification? shipping;

  /// For card charges, use [statement_descriptor_suffix](https://stripe.com/docs/payments/account/statement-descriptors#dynamic). Otherwise, you can use this value as the complete description of a charge on your customers' statements. It must contain at least one letter and be 1–22 characters long.
  final String? statementDescriptor;

  /// Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that's set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
  final String? statementDescriptorSuffix;

  /// Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
  final IntentStatus status;

  PaymentIntent(
      {required this.object,
      required this.id,
      required this.amount,
      required this.amountCapturable,
      this.amountDetails,
      required this.amountReceived,
      this.application,
      this.applicationFeeAmount,
      required this.automaticPaymentMethods,
      this.canceledAt,
      this.cancellationReason,
      required this.captureMethod,
      required this.clientSecret,
      required this.confirmationMethod,
      this.created,
      required this.currency,
      this.customer,
      this.description,
      this.invoice,
      this.latestCharge,
      required this.metadata,
      this.onBehalfOf,
      this.paymentMethod,
      this.paymentMethodTypes,
      this.receiptEmail,
      this.review,
      this.setupFutureUsage,
      this.shipping,
      this.statementDescriptor,
      this.statementDescriptorSuffix,
      required this.status});

  factory PaymentIntent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}

@JsonSerializable()
class AmountDetails {
  final AmountDetailsTip? tip;

  AmountDetails({
    this.tip,
  });

  factory AmountDetails.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AmountDetailsToJson(this);
}

@JsonSerializable()
class AmountDetailsTip {
  final int? amount;

  AmountDetailsTip({
    this.amount,
  });

  factory AmountDetailsTip.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsTipFromJson(json);

  Map<String, dynamic> toJson() => _$AmountDetailsTipToJson(this);
}

@JsonSerializable()
class AutomaticPaymentMethods {
  final bool enabled;

  const AutomaticPaymentMethods({this.enabled = false});

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$AutomaticPaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() => _$AutomaticPaymentMethodsToJson(this);
}
