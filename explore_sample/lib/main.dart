// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, unnecessary_string_escapes, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore The Istanbul',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SearchBox(),
                      Divider(),
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggestions(),
                      Divider(),
                      TopRated(),
                    ],
                  ),
                ),
              ),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Container TopRated() => Container(
    child: Column(
      children: [
        TitleItem("Top Rated", "View All"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post1.jpeg", "Bogazici Kopru", "7km from you", "14₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post2.jpeg", "FSM Kopru", "15km from you", "25₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post3.jpeg", "Sultan Ahmet Camii", "18km from you", "34₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post4.jpeg", "Kız Kulesi", "36km from you", "19₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post5.jpeg", "Galata Kulesi", "25km from you", "37₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post6.jpeg", "Karaköy", "12km from you", "40₺ / S"),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget Suggestions() => Container(
    child: Column(
      children: [
        TitleItem("Suggested", "View All"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post1.jpeg", "Bogazici Kopru", "7km from you", "14₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post2.jpeg", "FSM Kopru", "15km from you", "25₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post3.jpeg", "Sultan Ahmet Camii", "18km from you", "34₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post4.jpeg", "Kız Kulesi", "36km from you", "19₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post5.jpeg", "Galata Kulesi", "25km from you", "37₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post6.jpeg", "Karaköy", "12km from you", "40₺ / S"),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget NearLocations() => Container(
    child: Column(
      children: [
        TitleItem("Near You", "View All"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post1.jpeg", "Bogazici Kopru", "7km from you", "14₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post2.jpeg", "FSM Kopru", "15km from you", "25₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post3.jpeg", "Sultan Ahmet Camii", "18km from you", "34₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post4.jpeg", "Kız Kulesi", "36km from you", "19₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post5.jpeg", "Galata Kulesi", "25km from you", "37₺ / S"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationItem("assets/images/post6.jpeg", "Karaköy", "12km from you", "40₺ / S"),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget LocationItem(String photo, String title, String description, String price) {
    return Container(
      width: 210,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(
          color: Color.fromARGB(15, 120, 170, 170),
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              photo,
              width: 200,
              //height: 200,  
            ),
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 8,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 2,),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(236, 125, 87, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  price,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),  
    );
  }

  Widget TopLocations() => Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleItem("Top Walkers", "View All"),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              StoryItem("assets/images/ProfilePhoto1.jpeg", "Ayça S."),
                              StoryItem("assets/images/ProfilePhoto2.jpeg", "Ahmet Ö."),
                              StoryItem("assets/images/ProfilePhoto3.jpeg", "Osman G."),
                              StoryItem("assets/images/ProfilePhoto4.jpeg", "Elif T."),
                              StoryItem("assets/images/ProfilePhoto5.jpeg", "Arda K."),
                              StoryItem("assets/images/ProfilePhoto6.jpeg", "Melisa B."),

                              StoryItem("assets/images/ProfilePhoto1.jpeg", "Ayça S."),
                              StoryItem("assets/images/ProfilePhoto2.jpeg", "Ahmet Ö."),
                              StoryItem("assets/images/ProfilePhoto3.jpeg", "Osman G."),
                              StoryItem("assets/images/ProfilePhoto4.jpeg", "Elif T."),
                              StoryItem("assets/images/ProfilePhoto5.jpeg", "Arda K."),
                              StoryItem("assets/images/ProfilePhoto6.jpeg", "Melisa B."),
                            ],
                          ),
                        )
                      ],
                    ),
                  );

  Widget SearchBox() {
    return Container(
      height: 75,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(15, 120, 170, 170),
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.grey,
              ),
              SizedBox(width: 10,),
              Text(
                "Caferağa, Kadiköy",
                style: TextStyle(
                  color: Colors.grey,
                ),  
              ),
            ],
          ),
          Icon(
            Icons.tune,
            size: 22,
            color: Color.fromRGBO(236, 125, 87, 1),
          ),
        ],
      ),
    );
  }

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
                              children: [
                                Container(
                                  padding:  EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 241, 156, 101),
                                        Color.fromARGB(255, 233, 93, 70),
                                      ]
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(photo),
                                      radius: 35,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  name,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 153, 153, 153),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),  
                                ),
                              ],
                            ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Color.fromARGB(255, 56, 56, 56),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              link,
                              style: TextStyle(
                                color: Color.fromARGB(255, 153, 153, 153),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
  }

  Widget Header() {
    return Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, Emirhan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 153, 153, 153),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Explore Istanbul City",
                      style: TextStyle(
                        color: Color.fromARGB(255, 56, 56, 56),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),  
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.sunny,
                        size: 22,
                        color: Color.fromRGBO(236, 125, 87, 1),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.notifications,
                        size: 22,  
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }

  Widget BottomMenu() {
    return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 243, 243, 243),
                width: 1,
              )
            ),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomMenuItem("Home", Icons.home, true),
                BottomMenuItem("Moments", Icons.groups, false),
                HighLightedItem("Book", Icons.maps_ugc),
                BottomMenuItem("Chat", Icons.forum, false),
                BottomMenuItem("Profile", Icons.person, false),
              ],
            ),
          );
  }

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);
    if (active) 
    {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      icon,
                      size: 30,
                      color: renk,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: renk,
                      ),  
                    ),
                  ],
                ),
              );
  }

  Widget HighLightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      icon,
                      size: 41,
                      color: renk,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: renk,
                      ),  
                    ),
                  ],
                ),
              );
  }

}