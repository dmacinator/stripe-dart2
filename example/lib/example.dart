import 'package:stripe2/stripe2.dart';

void main() async {
  ///Define a secret key, make sure to properly handle the security of this key. (ie. set it as an environment variable, etc.)
  final key = "your stripe key";
  //initialize the Stripe object with the key and customers request.

  final customers = Stripe(key).customer;
  //Example: create a customer
  try {
    ///Create a customer
    final customer = await customers.create(CreateCustomerRequest(
        email: "test@gmail.com",
        name: "test user",
        phoneNumber: "18005920924"));
    print('Stripe response: ${customer.toJson()}');

    ///List customers by email
    final list = await customers
        .list(ListCustomersRequest(email: "existing customer email", limit: 5));
    print('Stripe response: ${list.data}');

    ///delete all customers with that email
    if (list.data.isNotEmpty) {
      for (final customer in list.data) {
        // Assuming each customer object has an `.id` attribute
        final customerId = customer.id; // Access the id of the customer
        await customers.delete(customerId); // Delete the customer by id
        print('Deleted customer with id: $customerId');
      }
    } else {
      print('No customers to delete');
    }
    return;
  } catch (err) {
    ///catch errors as needed;
    final errorMessage = 'Stripe API error: ${err.toString()}';
    print(errorMessage);
    return;
  }
}
