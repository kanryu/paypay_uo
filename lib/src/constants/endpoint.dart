/// A fixed class that returns the endpoint of each API
class Endpoint {
  /// CODE API
  static const String code = '/codes';
  static String getEndpoint(String endpointCode) => '/v2$endpointCode';

  /// Returns the endpoint of CODE API
  static String getCodesEndpoint() => getEndpoint(Endpoint.code);
}
