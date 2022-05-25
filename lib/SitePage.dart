import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/siteList.dart';


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
        child:SiteList()
        
      ),
    );
  }
}