import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class EphemeralKeysResource extends Resource<EphemeralKeys> {
  EphemeralKeysResource(super.client);

  Future<EphemeralKeys> create(CreateEphemeralKeysRequest request) async {
    final response = await post('ephemeral_keys', data: request.toJson());
    return EphemeralKeys.fromJson(response);
  }

  Future<EphemeralKeys> delete(String keyId) async {
    final request = await del('ephemeral_keys/$keyId');
    return EphemeralKeys.fromJson(request);
  }
}
