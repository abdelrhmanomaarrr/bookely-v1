import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  // ignore: non_constant_identifier_names
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var reponse = await dio.get('$_baseUrl$endPoint');
    return reponse.data;
  }
}
