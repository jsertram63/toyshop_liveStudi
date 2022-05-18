import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/shopPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 2,
        child:  Scaffold(
          appBar: AppBar(title:const Text("API"),
          bottom: const TabBar(tabs:[
            Tab(icon: Icon(Icons.toys),),
            Tab(icon: Icon(Icons.photo),)
          ]
          ),
          
          
          ),
          body: const TabBarView(children: [
            ToyHomePage(),
            Center(
              child: Text("Liste de lieu"),
            )
          ]),
          
          
        ),

      )
    );
  }
}


