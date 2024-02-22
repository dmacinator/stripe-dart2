part of '../../../../messages.dart';

/// https://docs.stripe.com/api/customers/list
@JsonSerializable()
class ListCustomersRequest {
  ///Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.
  final String? email;
//A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  ListCustomersRequest({
    this.email,
    this.limit,
  });

  factory ListCustomersRequest.fromJson(Map<String, dynamic> json) =>
      _$ListCustomersRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListCustomersRequestToJson(this);
}
