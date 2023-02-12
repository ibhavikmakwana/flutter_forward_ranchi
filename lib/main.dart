import 'package:flutter/material.dart';
import 'package:flutter_forward_ranchi/CharactersModel.dart';
import 'package:flutter_forward_ranchi/char_api_call.dart';
import 'package:flutter_forward_ranchi/detail_screen.dart';

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

  CharApiCall api = CharApiCall();
  CharactersModel? model;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    model = await api.getCharacters();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disney Characters'),
      ),
      body: model?.data == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailScreen(data: model!.data[index],)));
                  },
                  child: Card(
                    elevation: 8,
                    margin: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            model!.data[index].imageUrl,
                            height: 120,
                            width: 120,
                          ),
                        ),
                        Expanded(child: Text(model!.data[index].name)),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
