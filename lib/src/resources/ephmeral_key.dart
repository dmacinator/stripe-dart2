import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class EphmeralKeyResource extends Resource<EphmeralKey> {
  EphmeralKeyResource(super.client);

  Future<EphmeralKey> create(CreateEphmeralKeyRequest request) async {
    final response = await post('ephmeral_keys', data: request.toJson());
    return EphmeralKey.fromJson(response);
  }

  Future<EphmeralKey> delete(String keyId) async {
    final map = await del('ephmeral_kesys/$keyId');
    return EphmeralKey.fromJson(map);
  }
}
