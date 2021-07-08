import 'package:get/get.dart';

class RestClient extends GetConnect {
  // flutter dot env ???
  String baseUrl = 'http://192.168.15.100:8080'; // IP LOCAL

  RestClient() {
    httpClient.baseUrl = baseUrl;
  }
}

class RestClientException implements Exception {
  final int code;
  final String mensagem;

  RestClientException(this.mensagem, {this.code}); // code opcional

  @override
  String toString() => 'RestClientException(code: $code, mensagem: $mensagem)';
}
