import 'package:dio/dio.dart';
import 'DioClient.dart';

class DynamicApiServices {
  final DioClient _client = DioClient();

  // Dynamic post
  Future<dynamic> post(String url, {Object? data, Options? options}) async {
    options ??= Options(
      headers: {
        'Content-Type': 'multipart/form-data',
      },
    );

    try {
      Response response = await _client.dio.post(
        url,
        data: data,
        options: options,
      );
      return response;
    } catch (e) {
      print('Error in POST request: $e');
      rethrow; // Rethrow the error to handle it in the controller
    }
  }

  // Dynamic get
  Future<dynamic> get(String url) async {
    try {
      return await _client.dio.get(url);
    } catch (e) {
      print('Error in GET request: $e');
      rethrow; // Rethrow the error to handle it in the controller
    }
  }

  // Dynamic put
  Future<dynamic> put(String url, {Object? data, Options? options}) async {
    try {
      Response response = await _client.dio.put(
        url,
        data: data,
        options: options,
      );
      return response;
    } catch (e) {
      print('Error in PUT request: $e');
      rethrow; // Rethrow the error to handle it in the controller
    }
  }

  // Dynamic delete
  Future<dynamic> delete(String url) async {
    try {
      Options _options = Options(
        method: 'DELETE',
        headers: {
          'Content-Type': 'application/json',
        },
      );

      return await _client.dio.delete(url);
    } catch (e) {
      print('Error in DELETE request: $e');
      rethrow; // Rethrow the error to handle it in the controller
    }
  }
}