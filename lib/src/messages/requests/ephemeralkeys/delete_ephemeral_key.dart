part of '../../../../messages.dart';

// Assuming you have a JsonSerializable setup or any serialization method
@JsonSerializable()
class DeleteEphemeralKeyRequest {
  // The ID of the ephemeral key you'd like to delete.
  final String id;

  // Constructor
  DeleteEphemeralKeyRequest({
    required this.id,
  });

  // From JSON factory constructor, assuming you have json_serializable setup
  factory DeleteEphemeralKeyRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteEphemeralKeyRequestFromJson(json);

  // To JSON method
  Map<String, dynamic> toJson() => _$DeleteEphemeralKeyRequestToJson(this);
}
//