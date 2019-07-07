import 'package:book_store/screens/recharge.dart';
import 'package:book_store/utils/color.dart';
import 'package:book_store/widgets/bottonBar.dart';
import 'package:book_store/widgets/topBar.dart';
import 'package:flutter/material.dart';


class Account extends StatelessWidget {
  static const routeName = '/account';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(getColorHexFromStr("#F8F8F8")),
      appBar: topBar("", Color(getColorHexFromStr("#F8F8F8")), context),      
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color(getColorHexFromStr("#F8F8F8")),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/account.png"),          
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Manu Codes",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Color(getColorHexFromStr("#333333")),
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 40.0),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Container(
                    height: 82.0,
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(getColorHexFromStr('#FF6B03')),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Type',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              'Ordinary',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    height: 82.0,
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(getColorHexFromStr('#1093ED')),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Type',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              'Ordinary',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    height: 82.0,
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(getColorHexFromStr('#EEC60A')),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Type',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              'Ordinary',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],),
                SizedBox(height: 60.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(
                      context, 
                      Recharge.routeName
                    );
                  },
                  child: Container(
                    height: 64.0,                  
                    child: Material(
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.orange,
                              ),
                              child: Icon(
                                Icons.credit_card, 
                                size: 10.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Text('Recharge', style: TextStyle(fontSize: 20.0),),
                            SizedBox(width: 70.0,),
                            Image.asset('assets/paypal.png'),
                            SizedBox(width: 10.0,),
                            Image.asset('assets/master.png'),
                            SizedBox(width: 10.0,),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 64.0,                  
                  child: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.purple,
                                ),
                                child: Icon(
                                  Icons.card_travel, 
                                  size: 10.0,
                                  color: Colors.white,
                                ),
                              ),   
                              SizedBox(width: 13.0,),
                              Text('Purchase', style: TextStyle(fontSize: 20.0),),
                            ],
                          ) , 
                          Row(
                            children: <Widget>[
                              Icon(Icons.keyboard_arrow_right),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 64.0,                  
                  child: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.yellow,
                                ),
                                child: Icon(
                                  Icons.favorite, 
                                  size: 10.0,
                                  color: Colors.white,
                                ),
                              ),   
                              SizedBox(width: 13.0,),
                              Text('Favorite', style: TextStyle(fontSize: 20.0),),
                            ],
                          ) , 
                          Row(
                            children: <Widget>[
                              Icon(Icons.keyboard_arrow_right),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 64.0,                  
                  child: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.blue,
                                ),
                                child: Icon(
                                  Icons.info_outline, 
                                  size: 10.0,
                                  color: Colors.white,
                                ),
                              ),   
                              SizedBox(width: 13.0,),
                              Text('About', style: TextStyle(fontSize: 20.0),),
                            ],
                          ) , 
                          Row(
                            children: <Widget>[
                              Icon(Icons.keyboard_arrow_right),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 64.0,                  
                  child: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.blueGrey,
                                ),
                                child: Icon(
                                  Icons.settings, 
                                  size: 10.0,
                                  color: Colors.white,
                                ),
                              ),   
                              SizedBox(width: 13.0,),
                              Text('Settings', style: TextStyle(fontSize: 20.0),),
                            ],
                          ) , 
                          Row(
                            children: <Widget>[
                              Icon(Icons.keyboard_arrow_right),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),                
              ],
            )
          ),
        ]
      ),
      bottomNavigationBar: bottomBar("account"),
    );
  }
}