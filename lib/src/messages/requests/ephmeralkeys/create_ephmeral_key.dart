part of '../../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/create
abstract class _EphmeralKeyRequest {
  // The ID of the Customer you'd like to modify using the resulting ephemeral key.
  final String? customerId;
  //he ID of the Issuing Card you'd like to access using the resulting ephemeral key.
  final String? issuingCardId;
  //A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
  final String? nonce;
  //The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
  final String? verificationSession;
  _EphmeralKeyRequest({
    this.customerId,
    this.issuingCardId,
    this.nonce,
    this.verificationSession,
  });
}

@JsonSerializable()
class CreateEphmeralKeyRequest extends _EphmeralKeyRequest {
  CreateEphmeralKeyRequest(
      {super.customerId,
      super.issuingCardId,
      super.nonce,
      super.verificationSession});

  factory CreateEphmeralKeyRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEphmeralKeyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateEphmeralKeyRequestToJson(this);
}
