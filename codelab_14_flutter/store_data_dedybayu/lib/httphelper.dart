import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/pizza.dart';

class HttpHelper {
  final String authority = 'w5qg9.wiremockapi.cloud';
  final String path = 'pizzalist';

  static final HttpHelper _httpHelper = HttpHelper._internal();
  HttpHelper._internal();
  factory HttpHelper() => _httpHelper;

  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    final http.Response result = await http.get(url);

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      return jsonResponse.map<Pizza>((i) => Pizza.fromJson(i)).toList();
    } else {
      return [];
    }
  }

  Future<String> postPizza(Pizza pizza) async {
    const postPath = 'pizza'; // <-- tanpa slash!

    Uri url = Uri.https(authority, postPath);

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(pizza.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return data['message'] ?? 'Success';
    } else {
      return 'Error: ${response.statusCode}';
    }
  }
}
