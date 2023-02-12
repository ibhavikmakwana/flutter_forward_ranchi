import 'package:flutter/material.dart';
import 'package:flutter_forward_ranchi/CharactersModel.dart';

class DetailScreen extends StatelessWidget {
  
  final Datum data;
  
  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(data.imageUrl,height: 200,width: 200,),
          Text(data.name,
            style: TextStyle(
              fontSize: 20
            ),
          )
        ],
      ),
    );
  }
}
