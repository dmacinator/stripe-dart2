import 'dart:async';

import 'package:stripe2/messages.dart';

import '_resource.dart';

class CustomerResource extends Resource<Customer> {
  CustomerResource(super.client);

  Future<Customer> create(CreateCustomerRequest request) async {
    final response = await post('customers', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> update(UpdateCustomerRequest request) async {
    final response =
        await post('customers/${request.id}', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> retrieve(String customerId) async {
    final map = await get('customers/$customerId');
    return Customer.fromJson(map);
  }

  Future<DataList<Customer>> list([ListCustomersRequest? request]) async {
    final map = await get('customers', queryParameters: request?.toJson());
    return DataList<Customer>.fromJson(
        map, (value) => Customer.fromJson(value as Map<String, dynamic>));
  }

  Future<Customer> delete(String customerId) async {
    final request = await del('customers/$customerId');
    return Customer.fromJson(request);
  }
}
