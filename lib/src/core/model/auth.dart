import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

/// Credentials required by the client to execute the API
@freezed
class PayPayAuth with _$PayPayAuth {
  factory PayPayAuth({
    /// API KEY
    required String apiKey,

    /// API SECRET
    required String apiSecret,

    /// used as X-ASSUME-MERCHANT header, set empty if you will not POST
    required String merchantId,
  }) = _Auth;
}
