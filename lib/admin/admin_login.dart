import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tic/admin/add_wallpaper.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2),
                padding: EdgeInsets.only(top: 45, left: 20, right: 20),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xff1f005c),
                        Color(0xff5b0060),
                        Color(0xff870160),
                        Color(0xffac255e),
                        Color(0xffca485c),
                        Color(0xffe16b5c),
                        Color(0xfff39060),
                        Color(0xffffb56b),
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    ),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.elliptical(150, 50))),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 60),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          'Let`s start with\nAdmin',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontFamily: 'Mukta',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              SizedBox(height: 50),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, bottom: 5, top: 5),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 160, 160, 147)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: TextFormField(
                                    controller: usernamecontroller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Username';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Username',
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 160, 160, 147))),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, bottom: 5, top: 5),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 160, 160, 147)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: TextFormField(
                                    controller: userpasswordcontroller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 160, 160, 147))),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40),
                              GestureDetector(
                                onTap: () {
                                  LoginAdmin();
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
                                    'Log In',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  LoginAdmin() {
    FirebaseFirestore.instance.collection('Admin').get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['id'] != usernamecontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Your id is not correct',
              style: TextStyle(fontSize: 18),
            ),
          ));
        }
        if (result.data()['password'] != userpasswordcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Your password is not correct',
              style: TextStyle(fontSize: 18),
            ),
          ));
        } else {
          Route route = MaterialPageRoute(builder: (context) => AddWallpaper());
          Navigator.pushReplacement(context, route);
        }
      });
    });
  }
}
