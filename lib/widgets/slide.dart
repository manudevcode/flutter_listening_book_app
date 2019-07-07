import 'package:flutter/material.dart';

Widget slideItem(title, subtitle, image, Null Function() onTap){
  return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Padding(
        padding: EdgeInsets.all(16.0),
          child: Material(
            elevation: 6.0,
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),          
                ),             
              ),
              child: Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title.toString().toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: "Helvatica",
                            letterSpacing: 2.1,
                            fontWeight: FontWeight.w100
                          ),
                        ),
                        Text(
                          subtitle.toString().toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontFamily: "Helvatica",
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )
  );
}
