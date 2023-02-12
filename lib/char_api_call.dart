import 'package:http/http.dart' as http;

class CharApiCall {
  Future<void> getCharacters() async {
   final response = await http.get(Uri(
      scheme: 'https',
      host: 'api.disneyapi.dev',
      path: 'characters',
    ));

   print('Response: ${response.body}');
  }
}
