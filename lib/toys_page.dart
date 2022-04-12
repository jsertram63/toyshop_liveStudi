import 'package:flutter/material.dart';



class ToysList extends StatefulWidget {
  const ToysList({ Key? key }) : super(key: key);

  @override
  State<ToysList> createState() => _ToysListState();
}

class _ToysListState extends State<ToysList> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Liste de jouets"),
    
    );
  }
}