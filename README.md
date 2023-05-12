# paypay_uo
paypay_uo (PayPay Unofficial) is a client library for PayPay's Open Payment API (OPA) faithfully ported from paypayopa-sdk-php

Dart Class for interacting with the Paypay API
This is the quickest way to integrate PayPay payment services, primarily meant for merchants who wish to perform interactions with the Paypay API programatically.
With PayPay's OPA SDK, you can build a custom payment checkout process to suit your unique business needs and branding guidelines.

## SDK

PayPay SDK https://developer.paypay.ne.jp/miniapp/docs/apireference/commonSpecs

## Prerequisites

Before integrating with the SDK, run through this checklist:

*   Understand the payment flow
*   Sign up for a PayPay developer/merchant account
*   Generate the API keys from the Developer Panel. Use the sandbox API keys to test out the integration

## Features 
APIs implemented:

-   Cashback
-   QR Code
-   Payment
-   User
-   Wallet


## Usage 
Check out the Examples and API docs

```dart
import 'package:paypay_uo/paypay_uo.dart';

void main() async {
  /// from your developer account
  final apiKey = 'YOUR API KEY';
  final apiSecret = 'YOUR API SECRET';
  final assumeMerchant = 'YOUR ASSUME MERCHANT';
  final auth = PayPayAuth(
      merchantId: assumeMerchant, apiSecret: apiSecret, apiKey: apiKey);
  final client = PayPayClient(apiMode: ApiMode.staging, auth: auth);
  final payload = CreateQrCodePayload(
    merchantPaymentId: PayPayClient.getTestMerchantPaymentId(),
    amount: Amount(amount: 1, currency: 'JPY'),
    codeType: 'ORDER_QR',
    requestedAt: PayPayClient.getRequestdAt(),
    orderItems: [
      OrderItem(
          name: "Cake",
          quantity: 1,
          unitPrice: Amount(amount: 20, currency: 'JPY'))
    ],
    redirectType: "WEB_LINK",
    redirectUrl: "http://foobar.com",
  );

  final response = await client.codeApi.createQRCode(payload);
  print(response.statusCode);
  print(response.body);
  ApiResult result = PayPayClient.convertResponseToApiResult(response);
  print(result.resultInfo.code);
}
```

# License
Apache License Version 2.0

# Author
Copyright 2023 KATO Kanryu(k.kanryu@gmail.com)

## Additional information 
Please raise issues on GitHub. Pull requests always welcome.

[![License](https://img.shields.io/:license-apache-orange.svg)](https://opensource.org/licenses/Apache-2.0)
[![Coverage Status](https://coveralls.io/repos/github/kanryu/paypay_uo/badge.svg)](https://coveralls.io/github/kanryu/paypay_uo)
[![Maintainability](https://api.codeclimate.com/v1/badges/7f020ad8816dc9f64f6f/maintainability)](https://codeclimate.com/github/kanryu/paypay_uo/maintainability)
[![Black Duck Security Risk](https://copilot.blackducksoftware.com/github/repos/kanryu/paypay_uo/branches/master/badge-risk.svg)](https://copilot.blackducksoftware.com/github/repos/kanryu/paypay_uo/branches/master)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fpaypay%2Fpaypayopa-sdk-php.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fpaypay%2Fpaypayopa-sdk-php?ref=badge_shield)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=paypay_paypayopa-sdk-php&metric=alert_status)](https://sonarcloud.io/dashboard?id=paypay_paypayopa-sdk-php)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/e06f6ae54e164c92bece3058575af686)](https://app.codacy.com/gh/kanryu/paypay_uo/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)
[![BCH compliance](https://bettercodehub.com/edge/badge/kanryu/paypay_uo?branch=master)](https://bettercodehub.com/)


