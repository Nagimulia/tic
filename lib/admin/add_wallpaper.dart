import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:random_string/random_string.dart';
import 'package:tic/service/database.dart';

class AddWallpaper extends StatefulWidget {
  const AddWallpaper({super.key});

  @override
  State<AddWallpaper> createState() => _AddWallpaperState();
}

class _AddWallpaperState extends State<AddWallpaper> {
  final List<String> categoryitems = [
    'Dogs',
    'Cats',
    'Nature',
    'City',
    'Cartoon and Films',
    'Food',
    'water',
    'animals',
    'alcohol',
    'girls',
    'boys',
    'cars',
    'happy new year',
    'holidays',
    'cosmos',
    'goroscop',
    'drinks',
    'desert',
    'art',
    'game',
    'flowers',
    'Others',
    'background'
  ];

  String? value;

  final ImagePicker _picker = ImagePicker();

  File? selectedImage;

  Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    selectedImage = File(image!.path);
    setState(() {});
  }

  uploadItem() async {
    if (selectedImage != null) {
      String addId = randomAlphaNumeric(10);
      Reference firebaseStorageRef =
          FirebaseStorage.instance.ref().child('blogImages').child(addId);

      final UploadTask task = firebaseStorageRef.putFile(selectedImage!);
      var downloadUrl = await (await task).ref.getDownloadURL();

      Map<String, dynamic> addItem = {
        'Image': downloadUrl,
        'Id': addId,
      };
      await DatabaseMethods()
          .addWallpaper(addItem, addId, value!)
          .then((value) {
        MotionToast.success(
          title: Text("Image dowload"),
          description: Text("This is Amazing!"),
        ).show(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.indigo,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Add Wallpaper',
          style: TextStyle(
              color: Colors.indigo, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            selectedImage == null
                ? GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: Center(
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.camera,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.file(
                            selectedImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                items: categoryitems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (value) => setState(() {
                  this.value = value;
                }),
                hint: Text('Select Category'),
                value: value,
              )),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                uploadItem();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Add Wallpaper',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
