import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullScreen extends StatefulWidget {
  String imagepath;
  FullScreen({required this.imagepath});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
              tag: widget.imagepath,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                  imageUrl: widget.imagepath,
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column( 
              children: [
                Stack(
                  
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
