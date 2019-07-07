import 'package:book_store/widgets/bottonBar.dart';
import 'package:book_store/widgets/itemCardBook.dart';
import 'package:book_store/widgets/itemCardCourse.dart';
import 'package:book_store/widgets/slide.dart';
import 'package:book_store/widgets/topBar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topBar("Home", Colors.white, context),      
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            height: 250.0,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                slideItem("Listening", "Books", "assets/slide_1.png", (){}),
                slideItem("Liten", "Books", "assets/slide_2.png", (){}),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Text("Featured", style: TextStyle(fontSize: 25.0)),
          ),
          Container(
            height: 360.0,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                itemBookCard("The Forgotten Hours", "4.99", "5.0","assets/book_1.png", context),
                itemBookCard("Whiskey in a Teacup", "2.99", "4.5","assets/book_2.png", context),
                itemBookCard("kate spade new york- SHE", "1.99", "5.0","assets/book_3.png", context),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Text("Lastested", style: TextStyle(fontSize: 25.0)),
          ),
          Container(
            height: 360.0,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                itemBookCard("Blood for blood", "4.99", "5.0","assets/book_4.png", (){}),
                itemBookCard("The killer colective", "0.99", "4.5","assets/book_5.png", (){}),
                itemBookCard("Planner Weekly And Monthly", "5.99", "5.0","assets/book_6.png", (){}),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Text("Course", style: TextStyle(fontSize: 25.0)),
          ),
          itemCardCourse("Learn - Online Courses Educational App", "12/30", "assets/course_1.png", context),
          itemCardCourse("Learn - Online Courses Educational App", "12/30", "assets/course_2.png", context),
          itemCardCourse("Learn - Online Courses Educational App", "12/30", "assets/course_3.png", context)
        ],
      ),
      bottomNavigationBar: bottomBar("home"),
    );
  }
}