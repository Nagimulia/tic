import 'package:flutter/material.dart';
import 'package:tic/pages/all_wallpaper.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(children: [
                  Center(
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Mukta'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Dogs')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/bul.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Dogs',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Nature')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/bul.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Nature',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Cats')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/bul.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Cats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Cosmos')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/cos.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Cosmos',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Flowers')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/cos.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Flowers',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Goroscop')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/scor.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Goroscop',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Water')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/scor.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Water',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Holidays')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/scor.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Holidays',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Happy New Year')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/scor.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Happy New Year',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Happy New Year')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/juice.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Drinks',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Art')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/gallery.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Art',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Girls')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/red_angel.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Girls',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Animals')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/wild_pig.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Animals',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Background')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/silk.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Background',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Food')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/burger.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Food',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Boys')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/man.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Boys',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Cars')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/cars.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Cars',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Cartoon and Films')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/cartoon.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Cartoon and Films',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Alcohol')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/alc.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Alcohol',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'City')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/alc.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'City',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Dessert')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/des.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Dessert',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllWallpaper(category: 'Others')));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/des.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: Text(
                              'Others',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukta',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ]))));
  }
}
