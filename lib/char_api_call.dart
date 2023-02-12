import 'package:http/http.dart' as http;

class CharApiCall {
  void getCharacters() {
    http.get(Uri(
      scheme: 'https',
      host: 'api.disneyapi.dev',
      path: 'characters',
    ));
  }
}
