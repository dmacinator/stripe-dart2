// ignore_for_file: non_constant_identifier_names

part of '../../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/create
abstract class _EphemeralKeysRequest {
  // The ID of the Customer you'd like to modify using the resulting ephemeral key.
  final String? customer;
  //he ID of the Issuing Card you'd like to access using the resulting ephemeral key.

  final String? issuingCard;
  //A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
  final String? nonce;
  //The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
  final String? verificationSession;
  _EphemeralKeysRequest({
    this.customer,
    this.issuingCard,
    this.nonce,
    this.verificationSession,
  });
}

@JsonSerializable()
class CreateEphemeralKeysRequest extends _EphemeralKeysRequest {
  CreateEphemeralKeysRequest(
      {super.customer,
      super.issuingCard,
      super.nonce,
      super.verificationSession});

  factory CreateEphemeralKeysRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEphemeralKeysRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateEphemeralKeysRequestToJson(this);
}
