import 'package:book_store/screens/account.dart';
import 'package:book_store/screens/recharge.dart';
import 'package:flutter/material.dart';

import 'screens/bookDetail.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[700],
      ),
      initialRoute: '/',
      routes: {
        BookDetail.routeName: (context) => BookDetail(),
        Account.routeName: (context) => Account(),
        Recharge.routeName: (context) => Recharge()
      },
      home: Home(),
    );
  }
}
