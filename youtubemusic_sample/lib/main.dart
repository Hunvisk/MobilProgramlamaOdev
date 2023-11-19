// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity, 
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1),
                  ],
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/youtube_logo.png", width: 35,),
                            SizedBox(width: 10,),
                            Text(
                              "Music",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.podcasts, color: Colors.white),
                            SizedBox(width: 15,),
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(width: 15,),
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/profilephoto.jpeg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem("Energized"),
                        CategoryItem("Workout"),
                        CategoryItem("Feel Good"),
                        CategoryItem("Relaxation"),
                        CategoryItem("Chill Out"),
                        CategoryItem("Rokc"),
                        CategoryItem("Pop")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity, 
                color: Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADİO FROM A SONG",
                          style: TextStyle(
                            color: Color.fromRGBO(154, 153, 153, 1),
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Picks",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12),
                                  
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                                child: Text(
                                  "Play All",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        MusicRow("assets/images/cover1.jpeg", "Moments", "PaulWetz & Dillistone"),
                        MusicRow("assets/images/cover2.jpg", "Warrior", "Oscar & The Wolf"),
                        MusicRow("assets/images/cover3.jpg", "Get Lucky", "Daft Punk"),
                        MusicRow("assets/images/cover4.jpg", "Without Me", "Eminem"),
                        MusicRow("assets/images/cover5.jpg", "Red Wing", "Kerry Mills"),
                        MusicRow("assets/images/cover6.jpg", "Rolling İn The Deep", "Adele"),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgatten Favorites",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12),
                                  
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                                child: Text(
                                  "Play All",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicRow2("assets/images/cover1.jpeg", "Moments", "PaulWetz & Dillistone"),
                              MusicRow2("assets/images/cover2.jpg", "Warrior", "Oscar & The Wolf"),
                              MusicRow2("assets/images/cover3.jpg", "Get Lucky", "Daft Punk"),
                              MusicRow2("assets/images/cover4.jpg", "Without Me", "Eminem"),
                              MusicRow2("assets/images/cover5.jpg", "Red Wing", "Kerry Mills"),
                              MusicRow2("assets/images/cover6.jpg", "Rolling İn The Deep", "Adele"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity, 
              height: 70,
              color: Color.fromRGBO(33, 33, 33, 1),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home, color: Colors.white,),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.play_circle, color: Colors.white,),
                        Text(
                          "Samples",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.explore, color: Colors.white,),
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.subscriptions, color: Colors.white,),
                        Text(
                          "Library",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.slideshow, color: Colors.white,),
                        Text(
                          "Upgrade",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                backgroundImage: AssetImage(photo),
                                radius: 70,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  artist,
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 165, 165, 165),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(photo),
                                radius: 50,
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    artist,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 165, 165, 165),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,  
                          ),
                        ],
                      ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0, left: 12.0),
                        margin: const EdgeInsets.only(right: 3.0, left: 3.0),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white12,
                          )
                        ),
                        child: Text(
                          text, 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),),
                      );
  }
}
