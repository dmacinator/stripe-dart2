// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      city: json['city'] as String?,
      country: json['country'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      postalCode: json['postal_code'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  writeNotNull('line1', instance.line1);
  writeNotNull('line2', instance.line2);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('state', instance.state);
  return val;
}

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) =>
    BalanceTransaction(
      object: $enumDecode(_$BalanceTransactionObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      fee: json['fee'] as int,
      feeDetails: (json['fee_details'] as List<dynamic>)
          .map((e) => FeeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: json['net'] as int,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$BalanceTransactionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'fee_details': instance.feeDetails.map((e) => e.toJson()).toList(),
      'net': instance.net,
      'currency': instance.currency,
    };

const _$BalanceTransactionObjectEnumMap = {
  BalanceTransactionObject.balance_transaction: 'balance_transaction',
};

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) => FeeDetails(
      amount: json['amount'] as int,
      application: json['application'] as String?,
      currency: json['currency'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$FeeDetailsToJson(FeeDetails instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application', instance.application);
  val['currency'] = instance.currency;
  val['description'] = instance.description;
  val['type'] = instance.type;
  return val;
}

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
      object: $enumDecode(_$ChargeObjectEnumMap, json['object']),
      id: json['id'] as String,
      balanceTransaction: json['balance_transaction'] as String,
      paymentMethodDetails: PaymentMethodDetails.fromJson(
          json['payment_method_details'] as Map<String, dynamic>),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'object': _$ChargeObjectEnumMap[instance.object]!,
      'id': instance.id,
      'balance_transaction': instance.balanceTransaction,
      'payment_method_details': instance.paymentMethodDetails.toJson(),
      'livemode': instance.livemode,
    };

const _$ChargeObjectEnumMap = {
  ChargeObject.charge: 'charge',
};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetails(
      card: json['card'] == null
          ? null
          : PaymentMethodDetailsCard.fromJson(
              json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodDetailsToJson(
    PaymentMethodDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card', instance.card?.toJson());
  return val;
}

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetailsCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
    );

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
        PaymentMethodDetailsCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
    };

CheckoutSession _$CheckoutSessionFromJson(Map<String, dynamic> json) =>
    CheckoutSession(
      object: json['object'] as String,
      id: json['id'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      clientReferenceId: json['client_reference_id'] as String?,
      customer: json['customer'] as String?,
      paymentIntent: json['payment_intent'] as String?,
    );

Map<String, dynamic> _$CheckoutSessionToJson(CheckoutSession instance) {
  final val = <String, dynamic>{
    'object': instance.object,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client_reference_id', instance.clientReferenceId);
  writeNotNull('customer', instance.customer);
  writeNotNull('payment_intent', instance.paymentIntent);
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList();
  return val;
}

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.acss_debit: 'acss_debit',
  PaymentMethodType.affirm: 'affirm',
  PaymentMethodType.afterpay_clearpay: 'afterpay_clearpay',
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.au_becs_debit: 'au_becs_debit',
  PaymentMethodType.bacs_debit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.blik: 'blik',
  PaymentMethodType.boleto: 'boleto',
  PaymentMethodType.card: 'card',
  PaymentMethodType.cashapp: 'cashapp',
  PaymentMethodType.customer_balance: 'customer_balance',
  PaymentMethodType.eps: 'eps',
  PaymentMethodType.fpx: 'fpx',
  PaymentMethodType.giropay: 'giropay',
  PaymentMethodType.grabpay: 'grabpay',
  PaymentMethodType.ideal: 'ideal',
  PaymentMethodType.klarna: 'klarna',
  PaymentMethodType.konbini: 'konbini',
  PaymentMethodType.link: 'link',
  PaymentMethodType.oxxo: 'oxxo',
  PaymentMethodType.p24: 'p24',
  PaymentMethodType.paynow: 'paynow',
  PaymentMethodType.pix: 'pix',
  PaymentMethodType.promptpay: 'promptpay',
  PaymentMethodType.sepa_debit: 'sepa_debit',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.us_bank_account: 'us_bank_account',
  PaymentMethodType.wechat_pay: 'wechat_pay',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      object: $enumDecode(_$CustomerObjectEnumMap, json['object']),
      id: json['id'] as String,
      currency: json['currency'] as String?,
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'object': _$CustomerObjectEnumMap[instance.object]!,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  return val;
}

const _$CustomerObjectEnumMap = {
  CustomerObject.customer: 'customer',
};

EphemeralKeys _$EphemeralKeysFromJson(Map<String, dynamic> json) =>
    EphemeralKeys(
      object: $enumDecode(_$EphemeralKeysObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: json['created'] as int,
      expires: json['expires'] as int,
      livemode: json['livemode'] as bool,
      secret: json['secret'] as String?,
    );

Map<String, dynamic> _$EphemeralKeysToJson(EphemeralKeys instance) {
  final val = <String, dynamic>{
    'object': _$EphemeralKeysObjectEnumMap[instance.object]!,
    'id': instance.id,
    'created': instance.created,
    'expires': instance.expires,
    'livemode': instance.livemode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('secret', instance.secret);
  return val;
}

const _$EphemeralKeysObjectEnumMap = {
  EphemeralKeysObject.ephemeral_key: 'ephemeral_key',
};

DataList<T> _$DataListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataList<T>(
      object: $enumDecode(_$SubListObjectEnumMap, json['object']),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      hasMore: json['has_more'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DataListToJson<T>(
  DataList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': _$SubListObjectEnumMap[instance.object]!,
      'data': instance.data.map(toJsonT).toList(),
      'has_more': instance.hasMore,
      'url': instance.url,
    };

const _$SubListObjectEnumMap = {
  SubListObject.list: 'list',
};

EventData<T> _$EventDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    EventData<T>(
      object: fromJsonT(json['object']),
    );

Map<String, dynamic> _$EventDataToJson<T>(
  EventData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': toJsonT(instance.object),
    };

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Subscription>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => Subscription.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

const _$_EventObjectEnumMap = {
  _EventObject.event: 'event',
};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Customer>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Customer.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$CustomerEventToJson(CustomerEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

EphemeralKeysEvent _$EphemeralKeysEventFromJson(Map<String, dynamic> json) =>
    EphemeralKeysEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<EphemeralKeys>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => EphemeralKeys.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$EphemeralKeysEventToJson(EphemeralKeysEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Charge>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Charge.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$ChargeEventToJson(ChargeEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<PaymentIntent>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => PaymentIntent.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$PaymentIntentEventToJson(PaymentIntentEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Refund>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Refund.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$RefundEventToJson(RefundEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
        Map<String, dynamic> json) =>
    CheckoutSessionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<CheckoutSession>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => CheckoutSession.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$CheckoutSessionEventToJson(
        CheckoutSessionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) =>
    PaymentIntent(
      object: $enumDecode(_$PaymentIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      amountCapturable: json['amount_capturable'] as int,
      amountDetails: json['amount_details'] == null
          ? null
          : AmountDetails.fromJson(
              json['amount_details'] as Map<String, dynamic>),
      amountReceived: json['amount_received'] as int,
      application: json['application'] as String?,
      applicationFeeAmount: json['application_fee_amount'] as int?,
      automaticPaymentMethods: AutomaticPaymentMethods.fromJson(
          json['automatic_payment_methods'] as Map<String, dynamic>),
      canceledAt: _$JsonConverterFromJson<int, DateTime>(
          json['canceled_at'], const TimestampConverter().fromJson),
      cancellationReason: $enumDecodeNullable(
          _$CancellationReasonEnumMap, json['cancellation_reason']),
      captureMethod:
          $enumDecode(_$CaptureMethodEnumMap, json['capture_method']),
      clientSecret: json['client_secret'] as String,
      confirmationMethod:
          $enumDecode(_$ConfirmationMethodEnumMap, json['confirmation_method']),
      created: _$JsonConverterFromJson<int, DateTime>(
          json['created'], const TimestampConverter().fromJson),
      currency: json['currency'] as String,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      invoice: json['invoice'] as String?,
      latestCharge: json['latest_charge'] as String?,
      metadata: Map<String, String>.from(json['metadata'] as Map),
      onBehalfOf: json['on_behalf_of'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      review: json['review'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
      status: $enumDecode(_$IntentStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) {
  final val = <String, dynamic>{
    'object': _$PaymentIntentObjectEnumMap[instance.object]!,
    'id': instance.id,
    'amount': instance.amount,
    'amount_capturable': instance.amountCapturable,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_details', instance.amountDetails?.toJson());
  val['amount_received'] = instance.amountReceived;
  writeNotNull('application', instance.application);
  writeNotNull('application_fee_amount', instance.applicationFeeAmount);
  val['automatic_payment_methods'] = instance.automaticPaymentMethods.toJson();
  writeNotNull(
      'canceled_at',
      _$JsonConverterToJson<int, DateTime>(
          instance.canceledAt, const TimestampConverter().toJson));
  writeNotNull('cancellation_reason',
      _$CancellationReasonEnumMap[instance.cancellationReason]);
  val['capture_method'] = _$CaptureMethodEnumMap[instance.captureMethod]!;
  val['client_secret'] = instance.clientSecret;
  val['confirmation_method'] =
      _$ConfirmationMethodEnumMap[instance.confirmationMethod]!;
  writeNotNull(
      'created',
      _$JsonConverterToJson<int, DateTime>(
          instance.created, const TimestampConverter().toJson));
  val['currency'] = instance.currency;
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('latest_charge', instance.latestCharge);
  val['metadata'] = instance.metadata;
  writeNotNull('on_behalf_of', instance.onBehalfOf);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('review', instance.review);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  val['status'] = _$IntentStatusEnumMap[instance.status]!;
  return val;
}

const _$PaymentIntentObjectEnumMap = {
  PaymentIntentObject.payment_intent: 'payment_intent',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$CancellationReasonEnumMap = {
  CancellationReason.abandoned: 'abandoned',
  CancellationReason.automatic: 'automatic',
  CancellationReason.duplicate: 'duplicate',
  CancellationReason.failed_invoice: 'failed_invoice',
  CancellationReason.fraudulent: 'fraudulent',
  CancellationReason.requested_by_customer: 'requested_by_customer',
  CancellationReason.void_invoice: 'void_invoice',
};

const _$CaptureMethodEnumMap = {
  CaptureMethod.automatic: 'automatic',
  CaptureMethod.automatic_async: 'automatic_async',
  CaptureMethod.manual: 'manual',
};

const _$ConfirmationMethodEnumMap = {
  ConfirmationMethod.automatic: 'automatic',
  ConfirmationMethod.manual: 'manual',
};

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

const _$IntentStatusEnumMap = {
  IntentStatus.requires_payment_method: 'requires_payment_method',
  IntentStatus.requires_confirmation: 'requires_confirmation',
  IntentStatus.requires_action: 'requires_action',
  IntentStatus.processing: 'processing',
  IntentStatus.requires_capture: 'requires_capture',
  IntentStatus.canceled: 'canceled',
  IntentStatus.succeeded: 'succeeded',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

AmountDetails _$AmountDetailsFromJson(Map<String, dynamic> json) =>
    AmountDetails(
      tip: json['tip'] == null
          ? null
          : AmountDetailsTip.fromJson(json['tip'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmountDetailsToJson(AmountDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tip', instance.tip?.toJson());
  return val;
}

AmountDetailsTip _$AmountDetailsTipFromJson(Map<String, dynamic> json) =>
    AmountDetailsTip(
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$AmountDetailsTipToJson(AmountDetailsTip instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  return val;
}

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AutomaticPaymentMethods(
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
        AutomaticPaymentMethods instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PortalSession _$PortalSessionFromJson(Map<String, dynamic> json) =>
    PortalSession(
      object: json['object'] as String,
      id: json['id'] as String,
      customer: json['customer'] as String,
      livemode: json['livemode'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PortalSessionToJson(PortalSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'url': instance.url,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      object: $enumDecode(_$PriceObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      currency: json['currency'] as String,
      product: json['product'] as String,
      type: $enumDecode(_$PriceTypeEnumMap, json['type']),
      unitAmount: json['unit_amount'] as int,
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'object': _$PriceObjectEnumMap[instance.object]!,
      'id': instance.id,
      'active': instance.active,
      'currency': instance.currency,
      'product': instance.product,
      'type': _$PriceTypeEnumMap[instance.type]!,
      'unit_amount': instance.unitAmount,
    };

const _$PriceObjectEnumMap = {
  PriceObject.price: 'price',
};

const _$PriceTypeEnumMap = {
  PriceType.one_time: 'one_time',
  PriceType.recurring: 'recurring',
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      object: $enumDecode(_$ProductObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'object': _$ProductObjectEnumMap[instance.object]!,
    'id': instance.id,
    'active': instance.active,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  val['name'] = instance.name;
  return val;
}

const _$ProductObjectEnumMap = {
  ProductObject.product: 'product',
};

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      object: $enumDecode(_$RefundObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      balanceTransaction: json['balance_transaction'] as String?,
      charge: json['charge'] as String?,
      created: json['created'] as int,
      currency: json['currency'] as String,
      description: json['description'] as String?,
      failureBalanceTransaction: json['failure_balance_transaction'] as String?,
      failureReason: json['failure_reason'] as String?,
      instructionsEmail: json['instructions_email'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      paymentIntent: json['payment_intent'] as String?,
      reason: $enumDecodeNullable(_$RefundReasonEnumMap, json['reason']),
      receiptNumber: json['receipt_number'] as String?,
      sourceTransferReversal: json['source_transfer_reversal'] as String?,
      status: json['status'] as String?,
      transferReversal: json['transfer_reversal'] as String?,
    );

Map<String, dynamic> _$RefundToJson(Refund instance) {
  final val = <String, dynamic>{
    'object': _$RefundObjectEnumMap[instance.object]!,
    'id': instance.id,
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('balance_transaction', instance.balanceTransaction);
  writeNotNull('charge', instance.charge);
  val['created'] = instance.created;
  val['currency'] = instance.currency;
  writeNotNull('description', instance.description);
  writeNotNull(
      'failure_balance_transaction', instance.failureBalanceTransaction);
  writeNotNull('failure_reason', instance.failureReason);
  writeNotNull('instructions_email', instance.instructionsEmail);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('payment_intent', instance.paymentIntent);
  writeNotNull('reason', _$RefundReasonEnumMap[instance.reason]);
  writeNotNull('receipt_number', instance.receiptNumber);
  writeNotNull('source_transfer_reversal', instance.sourceTransferReversal);
  writeNotNull('status', instance.status);
  writeNotNull('transfer_reversal', instance.transferReversal);
  return val;
}

const _$RefundObjectEnumMap = {
  RefundObject.refund: 'refund',
};

const _$RefundReasonEnumMap = {
  RefundReason.duplicate: 'duplicate',
  RefundReason.fraudulent: 'fraudulent',
  RefundReason.requested_by_customer: 'requested_by_customer',
  RefundReason.expired_uncaptured_chargem: 'expired_uncaptured_chargem',
};

ShippingSpecification _$ShippingSpecificationFromJson(
        Map<String, dynamic> json) =>
    ShippingSpecification(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      name: json['name'] as String,
      carrier: json['carrier'] as String?,
      phone: json['phone'] as String?,
      trackingNumber: json['tracking_number'] as String?,
    );

Map<String, dynamic> _$ShippingSpecificationToJson(
    ShippingSpecification instance) {
  final val = <String, dynamic>{
    'address': instance.address.toJson(),
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('carrier', instance.carrier);
  writeNotNull('phone', instance.phone);
  writeNotNull('tracking_number', instance.trackingNumber);
  return val;
}

CreateCheckoutSessionRequest _$CreateCheckoutSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutSessionRequest(
      successUrl: json['success_url'] as String,
      cancelUrl: json['cancel_url'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      mode: $enumDecodeNullable(_$SessionModeEnumMap, json['mode']),
      clientReferenceId: json['client_reference_id'] as String?,
      customerEmail: json['customer_email'] as String?,
      customer: json['customer'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      billingAddressCollection: $enumDecodeNullable(
          _$BillingAddressCollectionEnumMap,
          json['billing_address_collection']),
      automaticTax: json['automatic_tax'] == null
          ? null
          : AutomaticTax.fromJson(
              json['automatic_tax'] as Map<String, dynamic>),
      taxIdCollection: json['tax_id_collection'] == null
          ? null
          : TaxIdCollection.fromJson(
              json['tax_id_collection'] as Map<String, dynamic>),
      paymentIntentData: json['payment_intent_data'] == null
          ? null
          : PaymentIntentData.fromJson(
              json['payment_intent_data'] as Map<String, dynamic>),
      subscriptionData: json['subscription_data'] == null
          ? null
          : SubscriptionData.fromJson(
              json['subscription_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCheckoutSessionRequestToJson(
    CreateCheckoutSessionRequest instance) {
  final val = <String, dynamic>{
    'success_url': instance.successUrl,
    'cancel_url': instance.cancelUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mode', _$SessionModeEnumMap[instance.mode]);
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList();
  writeNotNull('client_reference_id', instance.clientReferenceId);
  writeNotNull('customer_email', instance.customerEmail);
  writeNotNull('customer', instance.customer);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('billing_address_collection',
      _$BillingAddressCollectionEnumMap[instance.billingAddressCollection]);
  writeNotNull('automatic_tax', instance.automaticTax?.toJson());
  writeNotNull('tax_id_collection', instance.taxIdCollection?.toJson());
  writeNotNull('payment_intent_data', instance.paymentIntentData?.toJson());
  writeNotNull('subscription_data', instance.subscriptionData?.toJson());
  return val;
}

const _$SessionModeEnumMap = {
  SessionMode.payment: 'payment',
  SessionMode.setup: 'setup',
  SessionMode.subscription: 'subscription',
};

const _$BillingAddressCollectionEnumMap = {
  BillingAddressCollection.auto: 'auto',
  BillingAddressCollection.required: 'required',
};

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      quantity: json['quantity'] as int?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      priceData: json['price_data'] == null
          ? null
          : PriceData.fromJson(json['price_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('description', instance.description);
  writeNotNull('price_data', instance.priceData?.toJson());
  writeNotNull('price', instance.price);
  return val;
}

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: json['unit_amount'] as int?,
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceDataToJson(PriceData instance) {
  final val = <String, dynamic>{
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product);
  writeNotNull('unit_amount', instance.unitAmount);
  writeNotNull('product_data', instance.productData?.toJson());
  return val;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      name: json['name'] as String,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('images', instance.images);
  return val;
}

AutomaticTax _$AutomaticTaxFromJson(Map<String, dynamic> json) => AutomaticTax(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$AutomaticTaxToJson(AutomaticTax instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

TaxIdCollection _$TaxIdCollectionFromJson(Map<String, dynamic> json) =>
    TaxIdCollection(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$TaxIdCollectionToJson(TaxIdCollection instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
    );

Map<String, dynamic> _$PaymentIntentDataToJson(PaymentIntentData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  return val;
}

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      trialEnd: json['trial_end'] as int?,
      trialPeriodDays: json['trial_period_days'] as int?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('trial_end', instance.trialEnd);
  writeNotNull('trial_period_days', instance.trialPeriodDays);
  writeNotNull('metadata', instance.metadata);
  return val;
}

CreateCustomerRequest _$CreateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerRequest(
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$CreateCustomerRequestToJson(
    CreateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone_number', instance.phoneNumber);
  return val;
}

ListCustomersRequest _$ListCustomersRequestFromJson(
        Map<String, dynamic> json) =>
    ListCustomersRequest(
      email: json['email'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ListCustomersRequestToJson(
    ListCustomersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('limit', instance.limit);
  return val;
}

CreateEphemeralKeysRequest _$CreateEphemeralKeysRequestFromJson(
        Map<String, dynamic> json) =>
    CreateEphemeralKeysRequest(
      customer: json['customer'] as String?,
      issuingCard: json['issuing_card'] as String?,
      nonce: json['nonce'] as String?,
      verificationSession: json['verification_session'] as String?,
    );

Map<String, dynamic> _$CreateEphemeralKeysRequestToJson(
    CreateEphemeralKeysRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('issuing_card', instance.issuingCard);
  writeNotNull('nonce', instance.nonce);
  writeNotNull('verification_session', instance.verificationSession);
  return val;
}

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentIntentRequest(
      amount: json['amount'] as int,
      currency: json['currency'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      confirm: json['confirm'] as bool?,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      offSession: json['off_session'] as bool?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
    CreatePaymentIntentRequest instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'automatic_payment_methods', instance.automaticPaymentMethods?.toJson());
  val['currency'] = instance.currency;
  writeNotNull('confirm', instance.confirm);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}

UpdatePaymentIntentRequest _$UpdatePaymentIntentRequestFromJson(
        Map<String, dynamic> json) =>
    UpdatePaymentIntentRequest(
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      confirm: json['confirm'] as bool?,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      offSession: json['off_session'] as bool?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$UpdatePaymentIntentRequestToJson(
    UpdatePaymentIntentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull(
      'automatic_payment_methods', instance.automaticPaymentMethods?.toJson());
  writeNotNull('currency', instance.currency);
  writeNotNull('confirm', instance.confirm);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}

ListPaymentIntentsRequest _$ListPaymentIntentsRequestFromJson(
        Map<String, dynamic> json) =>
    ListPaymentIntentsRequest(
      customer: json['customer'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ListPaymentIntentsRequestToJson(
    ListPaymentIntentsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('limit', instance.limit);
  return val;
}

CreatePortalSessionRequest _$CreatePortalSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePortalSessionRequest(
      customer: json['customer'] as String,
      returnUrl: json['return_url'] as String?,
    );

Map<String, dynamic> _$CreatePortalSessionRequestToJson(
    CreatePortalSessionRequest instance) {
  final val = <String, dynamic>{
    'customer': instance.customer,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_url', instance.returnUrl);
  return val;
}

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      amount: json['amount'] as int?,
      charge: json['charge'] as String?,
      currency: json['currency'] as String?,
      customer: json['customer'] as String?,
      instructionsEmail: json['instructions_email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentIntent: json['payment_intent'] as String?,
      reason: $enumDecodeNullable(_$RefundReasonEnumMap, json['reason']),
      refundApplicationFee: json['refund_application_fee'] as bool?,
      reverseTransfer: json['reverse_transfer'] as bool?,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(CreateRefundRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('charge', instance.charge);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('instructions_email', instance.instructionsEmail);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('payment_intent', instance.paymentIntent);
  writeNotNull('reason', _$RefundReasonEnumMap[instance.reason]);
  writeNotNull('refund_application_fee', instance.refundApplicationFee);
  writeNotNull('reverse_transfer', instance.reverseTransfer);
  return val;
}

ListRefundsRequest _$ListRefundsRequestFromJson(Map<String, dynamic> json) =>
    ListRefundsRequest(
      charge: json['charge'] as String?,
      paymentIntent: json['payment_intent'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ListRefundsRequestToJson(ListRefundsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge', instance.charge);
  writeNotNull('payment_intent', instance.paymentIntent);
  writeNotNull('limit', instance.limit);
  return val;
}

ListPricesRequest _$ListPricesRequestFromJson(Map<String, dynamic> json) =>
    ListPricesRequest(
      active: json['active'] as bool?,
      currency: json['currency'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$ListPricesRequestToJson(ListPricesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  writeNotNull('currency', instance.currency);
  writeNotNull('product', instance.product);
  return val;
}

ListProductsRequest _$ListProductsRequestFromJson(Map<String, dynamic> json) =>
    ListProductsRequest(
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ListProductsRequestToJson(ListProductsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  return val;
}

ListSubscriptionsRequest _$ListSubscriptionsRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionsRequest(
      customer: json['customer'] as String?,
      price: json['price'] as String?,
      status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ListSubscriptionsRequestToJson(
    ListSubscriptionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('price', instance.price);
  writeNotNull('status', _$SubscriptionStatusEnumMap[instance.status]);
  return val;
}

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.incomplete: 'incomplete',
  SubscriptionStatus.incomplete_expired: 'incomplete_expired',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.past_due: 'past_due',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.unpaid: 'unpaid',
  SubscriptionStatus.all: 'all',
  SubscriptionStatus.ended: 'ended',
};

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerRequest(
      id: json['id'] as String,
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$UpdateCustomerRequestToJson(
    UpdateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone_number', instance.phoneNumber);
  val['id'] = instance.id;
  return val;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      object: $enumDecode(_$SubscriptionObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: json['created'] as int,
      customer: json['customer'] as String,
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      items: DataList<SubscriptionItem>.fromJson(
          json['items'] as Map<String, dynamic>,
          (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>)),
      currentPeriodStart: const TimestampConverter()
          .fromJson(json['current_period_start'] as int),
      currentPeriodEnd: const TimestampConverter()
          .fromJson(json['current_period_end'] as int),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{
    'object': _$SubscriptionObjectEnumMap[instance.object]!,
    'id': instance.id,
    'created': instance.created,
    'customer': instance.customer,
    'current_period_start':
        const TimestampConverter().toJson(instance.currentPeriodStart),
    'current_period_end':
        const TimestampConverter().toJson(instance.currentPeriodEnd),
    'status': _$SubscriptionStatusEnumMap[instance.status]!,
    'items': instance.items.toJson(
      (value) => value.toJson(),
    ),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}

const _$SubscriptionObjectEnumMap = {
  SubscriptionObject.subscription: 'subscription',
};

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      object: $enumDecode(_$SubscriptionItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      subscription: json['subscription'] as String,
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'object': _$SubscriptionItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'price': instance.price.toJson(),
      'subscription': instance.subscription,
    };

const _$SubscriptionItemObjectEnumMap = {
  SubscriptionItemObject.subscription_item: 'subscription_item',
};
