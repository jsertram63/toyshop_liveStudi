import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/formulaire.dart';

class NewToy extends StatefulWidget {
  const NewToy({ Key? key }) : super(key: key);

  @override
  State<NewToy> createState() => _NewToyState();
}

class _NewToyState extends State<NewToy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Ajout d'un jouet")),
      body: Formulaire()
      );
  }
}