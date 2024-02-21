import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class ProductResource extends Resource<Product> {
  ProductResource(super.client);

  Future<Product> retrieve(String id) async {
    final map = await get('products/$id');
    return Product.fromJson(map);
  }

  Future<DataList<Product>> list([ListProductsRequest? request]) async {
    final map = await get('products', queryParameters: request?.toJson());
    return DataList<Product>.fromJson(
        map, (value) => Product.fromJson(value as Map<String, dynamic>));
  }
}
