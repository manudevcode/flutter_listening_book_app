import 'package:book_store/utils/color.dart';
import 'package:flutter/material.dart';

Widget bottomBar(active){
  return new Container(
    color: Colors.white,
    height: 70.0,
    alignment: Alignment.center,
    child: new BottomAppBar(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.home,
              color: (active == 'home')?Colors.orange:Colors.grey,
              size: 30.0,
            ),
            onPressed: () {
            },
          ),
          new IconButton(
            icon: Icon(
              Icons.book,
              color: (active == 'books')?Colors.orange:Colors.grey,
              size: 30.0,
            ),
            onPressed: null,
          ),
          new IconButton(
            icon: Icon(
              Icons.person_outline,
              color: (active == 'account')?Colors.orange:Colors.grey,
              size: 30.0,
            ),
            onPressed: null,
          ),
        ],
      ),
    ), 
  );
}