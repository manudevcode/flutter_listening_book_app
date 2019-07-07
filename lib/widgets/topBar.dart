import 'package:book_store/screens/account.dart';
import 'package:book_store/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

Widget accountWidget(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(
        context,
        Account.routeName,
      );
    },
    child: Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/account.png"),          
        ),
      ),
    ),
  );
}

Widget topBar(title, color, context){
  return(
  new AppBar(
      backgroundColor: color,
      title: Text(
        title, 
        style: TextStyle(
          color: Color(getColorHexFromStr('#323643')),
          fontSize: 24.0
        ),
      ),
      elevation:0.0,
      actions: <Widget>[
        (ModalRoute.of(context).settings.name.indexOf("account") == -1)
        ?GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Account.routeName,
            );
          },
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/account.png"),          
              ),
            ),
          ),
        ):Text(''),
        SizedBox(width: 20.0,)
      ],
    )
  );
}