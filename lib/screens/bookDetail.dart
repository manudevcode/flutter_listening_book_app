import 'package:book_store/utils/color.dart';
import 'package:book_store/widgets/topBar.dart';
import 'package:flutter/material.dart';

class BookDetailArguments {
  final String name;
  final String image;

  BookDetailArguments(this.name, this.image);
}

class BookDetail extends StatelessWidget {
  static const routeName = '/book-detail';

  @override
  Widget build(BuildContext context) {

    final BookDetailArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
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
                  width: 166.0,
                  height: 240.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(args.image),          
                    ),
                  ),
                ),
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
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 12.0, bottom: 12.0),
                      child: const Text(
                        '\$ 4.99',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)
                      ),
                    ),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                  ),
                  transform: Matrix4.translationValues(0.0, -25.0, 0.0),
                ),
                Text(
                  args.name,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Color(getColorHexFromStr("#333333")),
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Sarah Perez | 12\'45\" ',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(getColorHexFromStr("#666666")),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.star, color: Theme.of(context).primaryColor ,),
                    Icon(Icons.star, color: Theme.of(context).primaryColor ,),
                    Icon(Icons.star, color: Theme.of(context).primaryColor ,),
                    Icon(Icons.star, color: Theme.of(context).primaryColor ,),
                    Icon(Icons.star, color: Colors.grey[400] ,),
                  ],
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
                SizedBox(height: 30.0),
                Text(
                  'Introduction',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: Color(getColorHexFromStr("#333333")),
                  ),
                ),
                SizedBox(height: 40.0),
                Row(                
                  children: <Widget>[
                    Container(
                      width: 8.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'Recommendation',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Color(getColorHexFromStr("#333333")),
                      ),
                    ),                  
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text(
                    'Has your life been living in the expectations of others?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(getColorHexFromStr("#666666")),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Row(                
                  children: <Widget>[
                    Container(
                      width: 8.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'Audio Introduction',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Color(getColorHexFromStr("#333333")),
                      ),
                    ),                  
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text(
                    'In your feelings, work, or family, do you have the experience of "do not want to do it, but still do it?" Has anyone been living in the expectations of others? \n\n\n' + 
                    'In your feelings, work, or family, do you have the experience of "do not want to do it, but still do it?" Has anyone been living in the expectations of others? \n\n\n' +
                    'In your feelings, work, or family, do you have the experience of "do not want to do it, but still do it?" Has anyone been living in the expectations of others?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(getColorHexFromStr("#666666")),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Row(                
                  children: <Widget>[
                    Container(
                      width: 8.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'Book information',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Color(getColorHexFromStr("#333333")),
                      ),
                    ),                  
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text(
                    'In your feelings, work, or family, do you have the experience of "do not want to do it, but still do it?" Has anyone been living in the expectations of others?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(getColorHexFromStr("#666666")),
                    ),
                  ),
                ),
              ],
            )
          ),
        ]
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 10.0,),
          RaisedButton(
            elevation: 12.0,
            onPressed: () {},
            textColor: Colors.grey[700],
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.message, size: 18,),
                  SizedBox(width: 10.0,),
                  Text(
                    '1.9k',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)
                  ),
                ],
              )
            ),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0))
          ),
          SizedBox(width: 10.0,),
          RaisedButton(
            elevation: 12.0,
            onPressed: () {},
            textColor: Colors.grey[700],
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.thumb_up, color: Colors.orange[700], size: 18,),
                  SizedBox(width: 10.0,),
                  Text(
                    '291k',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)
                  ),
                ],
              )
            ),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0))
          ),
          SizedBox(width: 10.0,),
          RaisedButton(
            elevation: 12.0,
            onPressed: () {},
            textColor: Colors.grey[700],
            color: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.share, size: 18,),
                ],
              )
            ),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0))
          ),
        ],
      )
    );
  }
}