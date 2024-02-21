part of '../../messages.dart';

enum CustomerObject { customer }

/// https://docs.stripe.com/api/customers/object
@JsonSerializable()
class Customer extends Message {
  final CustomerObject object;

  /// Unique identifier for the object.
  final String id;

  //Three-letter ISO code for the currency 
  //the customer can be charged in for recurring billing purposes.
  final String? currency;

  /// An arbitrary string attached to the object. Often useful for displaying to
  /// users.
  final String? description;

  /// The customer’s email address.
  final String? email;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format.
  final Map<String, dynamic>? metadata;

  /// The customer’s full name or business name.
  final String? name;

  Customer( {
    required this.object,
    required this.id,
    this.currency,
    this.description,
    this.email,
    this.metadata,
    this.name,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
