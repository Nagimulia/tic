import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tic/models/photo_model.dart';
import 'package:http/http.dart' as http;
import 'package:tic/widget/widget.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<PhotosModel> photos = [];
  TextEditingController searchcontroller = new TextEditingController();
  bool search = false;
  getSearchWallpaper(String searchQuery) async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=$searchQuery'),
        headers: {
          'Authorization':
              'cpgH5qb8A6VEpXKfMzBPP5K07oibBdVPKa6nR4tFpwX6PoCqgCITsI1O'
        }).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      jsonData['photos'].forEach((element) {
        PhotosModel photosModel = new PhotosModel();
        photosModel = PhotosModel.fromMap(element);
        photos.add(photosModel);
      });
      setState(() {
        search = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Center(
              child: Text(
                'Search',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mukta'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: searchcontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        getSearchWallpaper(searchcontroller.text);
                      },
                      child: search
                          ? GestureDetector(
                              onTap: () {
                                photos = [];
                                search = false;
                                setState(() {
                                  
                                });
                              },
                              child: Icon(Icons.close))
                          : Icon(Icons.search)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: wallpaper(photos, context))
          ],
        ),
      ),
    );
  }
}
