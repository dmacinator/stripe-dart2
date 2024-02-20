import 'dart:async';

import 'package:stripe2/messages.dart';

import '../client.dart';
import '_resource.dart';

class PriceResource extends Resource<Price> {
  PriceResource(Client client) : super(client);

  Future<Price> retrieve(String id) async {
    final map = await get('prices/$id');
    return Price.fromJson(map);
  }

  Future<DataList<Price>> list([ListPricesRequest? request]) async {
    final map = await get('prices', queryParameters: request?.toJson());
    return DataList<Price>.fromJson(
        map, (value) => Price.fromJson(value as Map<String, dynamic>));
  }
}
