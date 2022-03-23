// ignore: unused_import
import 'package:english_words/english_words.dart';

//

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      color: Colors.grey,
      
      title: 'Start-up Names',
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  // final _suggestions = <WordPair>[];
  // final _biggerFonts = const TextStyle(fontSize: 18);
  // @override
  
    
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title:  const Text('Start-up Names', style: TextStyle(color:  Colors.black) , ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if(i.isOdd) return const Divider(); 
          final index = i ~/2;
          if (index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(12));
          }
          return ListTile(
            title: Center(
              child: Text(
                _suggestions[index].asPascalCase,
                style: _biggerFont,
              ),
            ),
          );
        },
      ),
    );
  }
  }

 class HomePageCheck extends StatefulWidget {
   const HomePageCheck({Key? key}) : super(key: key);

   @override 
   _HomePageState createState() => _HomePageState();
 }