// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
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
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/insta_logo.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          size: 25,
                          color: Colors.black87,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          size: 25,
                          color: Colors.black87,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, right: 20.0, left: 8.0),
                        child: Icon(
                          Icons.send,
                          size: 25,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget("assets/images/ProfilePhoto1.jpeg", "ayca_sever"),
                            StoryWidget("assets/images/ProfilePhoto2.jpeg", "orhandemirer"),
                            StoryWidget("assets/images/ProfilePhoto3.jpeg", "o.gultekin"),
                            StoryWidget("assets/images/ProfilePhoto4.jpeg", "elif_turksvr"),
                            StoryWidget("assets/images/ProfilePhoto5.jpeg", "ahmetguler"),
                            StoryWidget("assets/images/ProfilePhoto6.jpeg", "melisablbl"),
                            StoryWidget("assets/images/ProfilePhoto1.jpeg", "ayca_sever"),
                            StoryWidget("assets/images/ProfilePhoto2.jpeg", "orhandemirer"),
                            StoryWidget("assets/images/ProfilePhoto3.jpeg", "o.gultekin"),
                            StoryWidget("assets/images/ProfilePhoto4.jpeg", "elif_turksvr"),
                            StoryWidget("assets/images/ProfilePhoto5.jpeg", "ahmetguler"),
                            StoryWidget("assets/images/ProfilePhoto6.jpeg", "melisablbl"),
                          ],
                        )
                      ),
                      PostItem("assets/images/ProfilePhoto1.jpeg", "assets/images/Post1.jpeg", "ayca_sever", "Kiz Kulesi"),
                      PostItem("assets/images/ProfilePhoto2.jpeg", "assets/images/Post2.jpeg", "orhandemirer", "Kiz Kulesi"),
                      PostItem("assets/images/ProfilePhoto3.jpeg", "assets/images/Post3.jpg", "o.gultekin", "Kiz Kulesi"),
                      PostItem("assets/images/ProfilePhoto4.jpeg", "assets/images/Post1.jpeg", "elif_turksvr", "Kiz Kulesi"),
                      PostItem("assets/images/ProfilePhoto5.jpeg", "assets/images/Post2.jpeg", "ahmetguler", "Kiz Kulesi"),
                      PostItem("assets/images/ProfilePhoto6.jpeg", "assets/images/Post3.jpg", "melisablbl", "Kiz Kulesi"),
                    ],
                  ),
                ),
              )
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(
                      Icons.home, 
                      size: 25, 
                      color: Colors.black87
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(
                      Icons.search, 
                      size: 25, 
                      color: Colors.black87
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(
                      Icons.smart_display, 
                      size: 25, 
                      color: Colors.black87
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(
                      Icons.favorite, 
                      size: 25, 
                      color: Colors.black87
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(
                      Icons.person, 
                      size: 25, 
                      color: Colors.black87
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar, String photo, String name, String location) => Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 0, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(avatar),
                        radius: 25,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 15, 
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 10, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz,),
                ],
              ),
            ),
            Container(
              width: double.infinity,  
              child: Image.asset(photo, fit: BoxFit.cover,)
            ),
            LikeCommentBox(),
            CommentBox("orhandemirer", "Harika fotoğraf, bayıldım!"),
            CommentBox("elif_turksvr", "Çok iyi fotğraf ayçacım :) "),
            
          ],
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.black87,),
                    SizedBox(width: 5,),
                    Icon(Icons.comment_bank_outlined, color: Colors.black87,),
                  ],
                ),
                Icon(Icons.flag_circle_outlined, color: Colors.black87,),
              ],
            ),
          );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    maxLines: 3,
                    text: TextSpan(
                      children: [
                        TextSpan( 
                          text: name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(text: "  "),
                        TextSpan( 
                          text: comment, 
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ), 
                  ),
                ),
              ],
            ),
          );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.black87,
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(214, 71, 103, 1),
                  const Color.fromRGBO(241, 166, 117, 1),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            name,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }

}