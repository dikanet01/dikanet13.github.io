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
    'https://images.unsplash.com/photo-1664542497842-61043e40967e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1664548726625-59094a8b72f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1664307658523-cbc22fc8cafe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
    'https://images.unsplash.com/photo-1664539847491-49d4858f5921?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1664293361176-b3dd16ee6590?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1664207251296-569bacae6f04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMzB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1664542848250-c7d8c73a25a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4MXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1664440163809-25f00e4065ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3NXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1664548327142-deecfff9ab13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
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
