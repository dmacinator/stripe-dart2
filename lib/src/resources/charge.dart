import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class ChargeResource extends Resource<Charge> {
  ChargeResource(super.client);

  Future<Charge> retrieve(String chargeId) async {
    final map = await get('charges/$chargeId');
    return Charge.fromJson(map);
  }
}
