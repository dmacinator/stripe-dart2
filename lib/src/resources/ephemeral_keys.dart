import 'dart:async';

import 'package:stripe2/messages.dart';

import '../client.dart';
import '_resource.dart';

class EphemeralKeysResource extends Resource<EphemeralKeys> {
  EphemeralKeysResource(Client client) : super(client);

  Future<EphemeralKeys> create(CreateEphemeralKeysRequest request) async {
    final response = await post('ephemeral_keys', data: request.toJson());
    return EphemeralKeys.fromJson(response);
  }

  Future<EphemeralKeys> delete(DeleteEphemeralKeyRequest key) async {
    final map = await del('ephemeral_keys/$key.keyId');
    return EphemeralKeys.fromJson(map);
  }
}
