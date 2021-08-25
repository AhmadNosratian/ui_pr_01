import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.light,
        title: Text(
          'Quick Help',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              print('on Tapped');
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconContent(
                    icon: Icons.gesture,
                    color: Colors.lightBlueAccent,
                    text: 'Breathe',
                  ),
                  IconContent(
                    icon: Icons.spa_outlined,
                    color: Colors.yellow[200],
                    text: 'Sleep',
                  ),
                  IconContent(
                      icon: Icons.family_restroom_outlined,
                      color: Colors.orange[200],
                      text: 'Anxiety'),
                  IconContent(
                    icon: Icons.sentiment_satisfied_alt,
                    color: Colors.grey,
                    text: 'Stress',
                  ),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                'Daily Meditations',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18.0,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage('assets/pic1.jpg'),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rest & Relax',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Row(
                          children: [
                            Icon(Icons.timer),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('30 mins')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Music',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View all',
                  ),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          width: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/kak3.jpg'),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                ),
                                height: 100,
                                width: 120,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Raining Sidewalk',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.timer),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('5 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  IconContent({this.icon, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Icon(
              icon,
              size: 44.0,
              color: color,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(text),
      ],
    );
  }
}
