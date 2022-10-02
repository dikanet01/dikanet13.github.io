import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagesList = [
    'https://i.pinimg.com/236x/d5/f9/1b/d5f91ba6dcfdd9507af312ccd27e9bd2.jpg',
    'https://i.pinimg.com/236x/be/56/16/be5616edc8f1991ca5b17c449221242e.jpg',
    'https://i.pinimg.com/236x/46/cb/fe/46cbfead759f562cbae700e67df82bb7.jpg',
    'https://i.pinimg.com/236x/57/56/22/575622a3885b9b71125a6c02ab630ea2.jpg',
    'https://i.pinimg.com/236x/1f/76/cf/1f76cf84d96ff88acf8c15d432e7ad00.jpg',
    'https://i.pinimg.com/236x/2b/f9/e8/2bf9e8a105fd0127340f868539802fad.jpg',
    'https://i.pinimg.com/236x/ed/fc/c2/edfcc21e92398a83a4a7b2f9d6e3e4b2.jpg',
    'https://i.pinimg.com/236x/1d/2c/43/1d2c438293ed225c8026be8a8631a650.jpg',
    'https://i.pinimg.com/236x/44/25/ce/4425cecfc1a0aa552b30943ba473202a.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter Poliwangi"),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                itemCount: imagesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(imagesList[index]),
                        fit: BoxFit.cover),
                  ));
                })),
      ),
    );
  }
}
