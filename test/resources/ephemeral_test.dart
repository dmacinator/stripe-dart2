import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stripe2/messages.dart';
import 'package:stripe2/src/client.dart';
import 'package:stripe2/src/resources/ephemeral_keys.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late EphemeralKeysResource ephemeralKeyResource;
  setUp(() {
    // We set the baseUrl to something unreachable, because we define
    // interceptors in the tests.
    client = Client(apiKey: 'sk_foobar', baseUrl: 'http://void/');
    ephemeralKeyResource = EphemeralKeysResource(client);
  });
  group('EphemeralKeysResource', () {
    test('properly decodes all values', () async {
      final request = CreateEphemeralKeysRequest();

      client.dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          expect(options.uri, Uri.parse('http://void/ephmeral_keys'));
          handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(createKeyResponse),
              statusCode: HttpStatus.ok,
            ),
          );
        },
      ));

      final response = await ephemeralKeyResource.create(request);

      expect(response.id, 'cus_JC3alB0zcgmLbY');
      expect(response.secret, 'grwe098');
      expect(response.created, 1616864327);
      expect(response.expires, 1616864327);
      expect(response.livemode, true);
    });
  });
}

const createKeyResponse = r'''
{
  "object":"ephemeralkeys",
  "id":"cus_JC3alB0zcgmLbY",
  "created":1616864327,
  "expires":1616864327,
  "secret":"grwe098",
  "livemode":true
}
''';
