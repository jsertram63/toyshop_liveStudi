import 'package:flutter/material.dart';


class SitePage extends StatefulWidget {
  const SitePage({ Key? key }) : super(key: key);

  @override
  State<SitePage> createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(child: const Text("Liste de lieu")),
        
      ),
    );
  }
}