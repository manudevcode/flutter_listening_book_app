import 'package:book_store/screens/bookDetail.dart';
import 'package:book_store/utils/color.dart';
import 'package:flutter/material.dart';

Widget itemBookCard(title, price, stars, image, context){
  return GestureDetector(
      onTap: (){
        Navigator.pushNamed(
          context,
          BookDetail.routeName,
          arguments: BookDetailArguments(
            title,
            image
          ),
        );
      },
      child: Container(
        width: 163.0,
        child: Padding(
        padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Material(
                elevation: 6.0,
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 163.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),          
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 12.0,
                        right: 12.0,
                        child: Align(
                          child: Container(
                            width: 35.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(getColorHexFromStr("#FF6B03")),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(              
                                  Icons.star,
                                  color: Colors.white,
                                  size: 18.0,
                                ), 
                                Text(stars, 
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],)
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
              Flexible(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Flexible(
                        child: new Container(
                          padding: new EdgeInsets.only(right: 13.0),
                          child: new Text(
                            title,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.fade,
                            softWrap: true,
                            style: new TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'Roboto',
                              color: new Color(0xFF212121),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text("\$$price", textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0),)
                    ],
                  ),
              )
            ],
          )
        ),
      )
  );
}
