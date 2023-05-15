import 'dart:convert';
import 'package:http/http.dart';
import 'package:uuid/uuid.dart';
import 'package:logger/logger.dart';
import 'package:paypay_uo/src/controller/code.dart';
import 'package:paypay_uo/src/controller/cashback.dart';
import 'package:paypay_uo/src/controller/payment.dart';
import 'package:paypay_uo/src/controller/user.dart';
import 'package:paypay_uo/src/controller/wallet.dart';
import 'package:paypay_uo/src/constants/api_uri.dart';
import 'package:paypay_uo/src/core/model/auth.dart';
import 'package:paypay_uo/src/core/model/api_result.dart';

enum ApiMode { perfMode, staging, test, production }

class PayPayClient {
  PayPayClient(
      {required this.auth,
      required this.apiMode,
      Logger? logger,
      this.code,
      this.cashBack,
      this.payment,
      this.user,
      this.wallet,
      Client? client})
      : uri = ApiUri.getUri(apiMode),
        http = client ?? Client(),
        logger = logger ?? Logger(level: Level.info);

  final Client http;
  final PayPayAuth auth;
  final ApiMode apiMode;

  /// A Logger commonly used in this library.
  /// You can customize by resetting logger.printer or logger.output.
  final Logger logger;

  /// url set of the APIs
  final ApiUri uri;

  /// QR API controller
  late Code? code;

  /// Cashback API controller
  late Cashback? cashBack;

  /// Payment API controller
  late Payment? payment;

  /// User API controller
  late User? user;

  /// Wallet API controller
  late Wallet? wallet;

  /// Returns QR Code API controller
  Code get codeApi => code != null ? code! : code = Code(main: this);

  /// Returns CashBack API controller
  Cashback get cashBackApi =>
      cashBack != null ? cashBack! : cashBack = Cashback(main: this);

  /// Returns Payment API controller
  Payment get paymentApi =>
      payment != null ? payment! : payment = Payment(main: this);

  /// Returns User API controller
  User get userApi => user != null ? user! : user = User(main: this);

  /// Returns Payment API controller
  Wallet get walletApi =>
      wallet != null ? wallet! : wallet = Wallet(main: this);

  static String getTestMerchantPaymentId() {
    final uuidLength = Uuid().v4().length;
    final testmerchPayIdRand = Uuid().v4().substring(uuidLength - 12);
    return 'TESTMERCH_PAY_$testmerchPayIdRand';
  }

  static int getRequestdAt() {
    final requestTimeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    return int.parse(
        requestTimeStamp.substring(0, requestTimeStamp.length - 3));
  }

  static ApiResult convertResponseToApiResult(Response response) =>
      ApiResult.fromJson(json.decode(utf8.decode(response.bodyBytes)));
}
