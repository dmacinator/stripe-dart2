part of '../../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/create
abstract class _EphemeralKeysRequest {
  // The ID of the Customer you'd like to modify using the resulting ephemeral key.
  final String? customer;
  //he ID of the Issuing Card you'd like to access using the resulting ephemeral key.
  // ignore: non_constant_identifier_names
  final String? issuing_card;
  //A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
  final String? nonce;
  //The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
  final String? verification_session;
  _EphemeralKeysRequest({
    this.customer,
    this.issuing_card,
    this.nonce,
    this.verification_session,
  });
}

@JsonSerializable()
class CreateEphemeralKeysRequest extends _EphemeralKeysRequest {
  CreateEphemeralKeysRequest(
      {super.customer,
      super.issuing_card,
      super.nonce,
      super.verification_session});

  factory CreateEphemeralKeysRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEphemeralKeysRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateEphemeralKeysRequestToJson(this);
}
