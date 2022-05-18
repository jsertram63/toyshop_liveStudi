import 'package:flutter/material.dart';


class ImageContainer extends StatelessWidget {
  const ImageContainer({ Key? key, 
  this.width, 
  this.heigth,
  this.placeholder = const Color(0xFFEEEEEE),
  required this.url }) : super(key: key);
  final double? width;
  final double? heigth;
  final Color placeholder ;
  final String url;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        
        color: placeholder,
        image: url.contains('http') ? DecorationImage(image: NetworkImage(url),
        fit: BoxFit.fill
        ) : null
      
      ),
      
    );
  }
}