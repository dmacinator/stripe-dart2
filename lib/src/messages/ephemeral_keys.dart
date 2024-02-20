part of '../../messages.dart';

enum _EphemeralKeysObject { ephemeral_key }

/// https://docs.stripe.com/api/customers/object
@JsonSerializable()
class EphemeralKeys extends Message {
  final _EphemeralKeysObject object;

  /// Unique identifier for the object.
  final String id;

  ///Time at which the object was created. Measured in seconds since the Unix epoch.
  final int created;

  /// Time at which the key will expire. Measured in seconds since the Unix epoch.
  final int expires;

//Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  final bool livemode;

//The key's secret. You can use this value to make authorized requests to the Stripe API.
  final String? secret;

  EphemeralKeys({
    required this.object,
    required this.id,
    required this.created,
    required this.expires,
    required this.livemode,
    this.secret,
  });

  factory EphemeralKeys.fromJson(Map<String, dynamic> json) =>
      _$EphemeralKeysFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EphemeralKeysToJson(this);
}
