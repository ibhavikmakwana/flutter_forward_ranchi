import 'package:flutter_forward_ranchi/CharactersModel.dart';
import 'package:http/http.dart' as http;

class CharApiCall {
  Future<CharactersModel> getCharacters() async {
   final response = await http.get(Uri(
      scheme: 'https',
      host: 'api.disneyapi.dev',
      path: 'characters',
    ));

   return charactersModelFromJson(response.body);
  }
}
