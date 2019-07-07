import 'package:book_store/utils/color.dart';
import 'package:flutter/material.dart';

Widget itemCardCourse(title, progress, image, context){
  return GestureDetector(
      child: AspectRatio(
        aspectRatio: 1.2,
        child: Container(
          child: Padding(
          padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Material(
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image),          
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      new Container(
                        child: new Text(
                          title,
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: new TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Roboto',
                            color: new Color(0xFF212121),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 10 * 7,
                            height: 10.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(getColorHexFromStr("#ECECEC"))
                            ),
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.1, 0.7, 0.7],
                                colors: [Color(getColorHexFromStr("#FF974D")), Color(getColorHexFromStr("#FF6A02")), Color(getColorHexFromStr("#ECECEC"))],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          new Text(
                            progress,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: new TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      )                      
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      )
  );
}