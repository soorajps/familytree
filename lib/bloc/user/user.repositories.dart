import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserRepository {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final _dio = Dio();

  String get loginUrl => 'http://localhost:1337/api/auth/local';

  Future<String> login(String identifier, String password) async {
    Response response = await _dio
        .post(loginUrl, data: {identifier: identifier, password: password});
    return response.data['token'];
  }
}
