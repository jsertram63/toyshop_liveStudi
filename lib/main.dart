import 'dart:io';

import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/SitePage.dart';
import 'package:live_shoptoyts_start_6avril2022/shopPage.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  List<Widget> _tabs = [
    ToyHomePage(), // see the HomeTab class below
   SitePage()// see the SettingsTab class below
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    //if(Platform.isIOS){



   

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 2,
        child: Platform.isAndroid ? Scaffold(
          appBar: AppBar(title:const Text("API"),
          bottom: const TabBar(tabs:[
            Tab(icon: Icon(Icons.toys),),
            Tab(icon: Icon(Icons.photo),)
          ]
          ),
          
          
          ),
          body: const TabBarView(children: [
            ToyHomePage(),
            SitePage()
          ]),
          
          
        ) : CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label:"Site"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ]), tabBuilder: (BuildContext context, index){
              return _tabs[index];
            }),

      )
    );
  }
}


