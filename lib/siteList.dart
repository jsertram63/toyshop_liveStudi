import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/controller/sitecontroller.dart';

import 'models/Site.dart';



class SiteList extends StatefulWidget {
  const SiteList({ Key? key }) : super(key: key);

  @override
  State<SiteList> createState() => _SiteListState();
}

class _SiteListState extends State<SiteList> {



  final moncontroller = SiteController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder<List<Sites>>(
        future: moncontroller.fetchSite(),
        builder:(context, snapshot){
          final sites = snapshot.data;
          if(sites == null){
            return Center(child: Column(children: [
              CircularProgressIndicator(),
              Text("CHargement des données")
            ],));
          }

          return ListView.separated(
           separatorBuilder: ((context, index)=> const Divider(
             height: 5,
             color:Colors.grey,
             endIndent: 50,
             indent: 50,
           )),
           itemBuilder: (BuildContext context, int postition){
             return _buildRows(sites[postition]);
           }, 
           itemCount: sites.length);
          
        })

    
      
    );
  }

  Widget _buildRows(Sites site){
    return Padding(padding: const EdgeInsets.only(bottom: 20, top:20),
    child: ListTile(
      title: Padding(padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(site.nom.toString(),style: TextStyle(fontSize: 14),
      ), 
      
      ),
      subtitle: Text(site.pays.toString(), style: TextStyle(fontSize: 12),),
      trailing: ClipRRect(borderRadius: BorderRadius.circular(8),
      child: Image.network(site.photo.toString()),
      )
      

    ));
    
  }


}



