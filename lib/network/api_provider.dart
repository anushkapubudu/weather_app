import 'dart:io';

import 'package:http/http.dart' as http;

class ApiProvider {
  static final ApiProvider _shared = ApiProvider._internal();
  factory ApiProvider() {
    return _shared;
  }
  ApiProvider._internal();

  final String _baseUrl = "https://my.meteoblue.com/packages/";

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      var endurl = Uri.parse(_baseUrl + url);
      final response = await http.get(endurl);
      responseJson = _response(response);
    } on SocketException {
      throw SocketException('No Internet connection');
    } catch (e) {
      throw e;
    }
    return responseJson;
  }

  _response(http.Response response) {
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Bad Response");
    }
  }
}
