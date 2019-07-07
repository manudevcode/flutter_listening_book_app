import 'package:book_store/utils/color.dart';
import 'package:book_store/widgets/topBar.dart';
import 'package:flutter/material.dart';


class Recharge extends StatelessWidget {
  static const routeName = '/account/recharge';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(getColorHexFromStr("#F8F8F8")),
      appBar: topBar("", Color(getColorHexFromStr("#F8F8F8")), context),      
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Recharge',
                  style: TextStyle(
                    fontSize: 28.0
                  )
                ),
                SizedBox(height: 30.0,),
                Container(
                  height: 64.0,    
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(getColorHexFromStr('#FFF0E6')),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Month Card', style: TextStyle(fontSize: 20.0, color: Colors.orange),),
                              SizedBox(width: 10.0,),
                              Container(
                                height: 30.0,   
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.orange,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Center(
                                    child: Text(
                                      'Off 5%',
                                      style: TextStyle(
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ), 
                          Row(
                            children: <Widget>[
                              Text(
                                '\$ 6',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
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
                              Text('Quarter Card', style: TextStyle(fontSize: 20.0, color: Color(getColorHexFromStr('#999999')))),
                              SizedBox(width: 10.0,),
                              Container(
                                height: 30.0,   
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(getColorHexFromStr('#999999')),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Center(
                                    child: Text(
                                      'Off 10%',
                                      style: TextStyle(
                                        color: Color(getColorHexFromStr('#999999')),
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ), 
                          Row(
                            children: <Widget>[
                              Text(
                                '\$ 16',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(getColorHexFromStr('#999999'))
                                ),
                              ),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
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
                              Text('Year Card', style: TextStyle(fontSize: 20.0, color: Color(getColorHexFromStr('#999999')))),
                              SizedBox(width: 10.0,),
                              Container(
                                height: 30.0,   
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(getColorHexFromStr('#999999')),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Center(
                                    child: Text(
                                      'Off 30%',
                                      style: TextStyle(
                                        color: Color(getColorHexFromStr('#999999')),
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ), 
                          Row(
                            children: <Widget>[
                              Text(
                                '\$ 42',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(getColorHexFromStr('#999999'))
                                ),
                              ),
                            ],
                          ) ,                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'Interests',
                  style: TextStyle(
                    fontSize: 28.0
                  )
                ),
              ],
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Every day as low as 1 yuan, all the books are good',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(getColorHexFromStr('#333333')),
                      fontSize: 22.0
                    )
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'During the membership period, all regular listening products are listened to. Updated daily, one book a day, 365 books a year.',
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Experts master for hundreds of hours to read for you',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(getColorHexFromStr('#333333')),
                      fontSize: 22.0
                    )
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'During the membership period, all regular listening products are listened to. Updated daily, one book a day, 365 books a year.',
                    style: TextStyle( color: Color(getColorHexFromStr("#FF974D"))),
                  ),
                ],
              ),
            ),
          )
        ]
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Month Card. \$ 6.0', style: TextStyle(fontSize: 20.0, color: Colors.orange),),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(getColorHexFromStr("#FF974D")), Color(getColorHexFromStr("#FF6A02"))],
                      ),
                    ),
                    padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 12.0, bottom: 12.0),
                    child: const Text(
                      'Pay',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)
                    ),
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}