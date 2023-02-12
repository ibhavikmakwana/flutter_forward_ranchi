import 'package:flutter/material.dart';
import 'package:flutter_forward_ranchi/char_api_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // API: https://api.disneyapi.dev/characters
  // QuickType (For JSON Parsing): https://app.quicktype.io/

  CharApiCall api= CharApiCall();

  @override
  void initState() {
    super.initState();
    api.getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disney Characters'),
      ),
      body: Card(
        elevation: 8,
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://static.wikia.nocookie.net/disney/images/6/61/Olu_main.png',
                height: 120,
                width: 120,
              ),
            ),
            Expanded(child: Text('Olu Mel')),
          ],
        ),
      ),
    );
  }
}
