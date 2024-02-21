import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class PortalSessionResource extends Resource<PortalSession> {
  PortalSessionResource(super.client);

  /// Creates a Stripe Checkout Session.
  Future<PortalSession> create(CreatePortalSessionRequest request) async {
    final response =
        await post('billing_portal/sessions', data: request.toJson());
    return PortalSession.fromJson(response);
  }
}
