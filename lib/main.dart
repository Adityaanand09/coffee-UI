import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding:EdgeInsets.only(left:15.0),
        children: <Widget>[
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Welcome, Aditya',
                style:TextStyle(
                  fontFamily: 'varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color:Color(0xFF473D3A),
                ),
              ),
              Padding(
                  padding:EdgeInsets.only(right:15.0),
                  child:Container(
                    height:40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        //color: Colors.blue,
                        image:DecorationImage(
                          image: AssetImage('images/aditya.jpg'),
                          fit:BoxFit.cover,
                        )
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height:10.0,),
          Padding(padding:const EdgeInsets.only(right:45.0),
              child:Container(
                  child:Text(
                    'Let\'s select the best taste for your next cofee break',
                    style:
                    TextStyle(
                      fontFamily: 'nunito',
                      fontSize:17.0,
                      fontWeight: FontWeight.w300,
                      color:Color(0xFFB0AAA7),
                    ),
                  )
              )
          ),
          SizedBox(
            height:25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Taste of The Week',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color:Color(0xFF473D3A),
                ),),
              Padding(
                padding:EdgeInsets.only(right:15.0),
                child: Text('See All',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color:Color(0xFFCEC74),
                  ),),
              ),
            ],
          ),
          SizedBox(height:15.0),
          Container(
            height:410,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard('images/coffepic1.jpg',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',
                    false),
                _coffeeListCard('images/coffepic1.jpg',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$4.99',
                    false),
              ],
            ),
          ),
          SizedBox(height:15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore NearBy',
                style:TextStyle(
                  fontFamily:'varela',
                  fontSize: 17.0,
                  color:Color(0xFF473D3A),),
              ),
              Padding(
                padding:EdgeInsets.only(right:15.0),
                child: Text(
                    'See All',
                    style:TextStyle(
                      fontFamily: 'varela',
                      fontSize: 15.0,
                      color:Color(0xFFCE7C4),
                    )
                ),
              )
            ],
          ),
          SizedBox(
              height:15.0),
          Container(
              height:125.0,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('images/coffepic1.jpg'),
                  _buildImage('images/coffepic1.jpg'),
                  _buildImage('images/coffepic1.jpg'),
                ],
              )

          ),
          SizedBox(height: 15.0,),
        ],
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }

  _buildImage(String imgPath){
    return Padding(
      padding:EdgeInsets.only(right:15.0),
      child: Container(
          height:100.0,
          width:175.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image:DecorationImage(
                image:AssetImage(imgPath),fit:BoxFit.cover),
          )
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName, String description,String price, bool isFavourite){
    return Padding(
        padding:EdgeInsets.only(left:15.0, right:15.0),
        child:Container(
          // height:200.0,
            width:225.0,
            child:Column(
              children: <Widget>[
                Stack(
                  children:<Widget>[
                    Container(
                      height:335.0,
                      // color: Colors.red,
                    ),
                    Positioned(
                      top: 75.0,
                      child:Container(
                          padding:EdgeInsets.only(left:10.0,right:20.0),
                          height:260,
                          width:225.0,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color:Color(0xFFDAb68C),
                          ),

                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height:60.0,
                              ),
                              Text(
                                shopName + '\s',
                                style:TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize:14.0,
                                    fontWeight:FontWeight.bold,
                                    color:Colors.white),
                              ),
                              SizedBox(height:10.0),
                              Text(
                                coffeeName,
                                style:TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                              SizedBox(height:10.0),
                              Text(
                                description,
                                style:TextStyle(
                                  fontFamily:'nunito',
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height:10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                      price,
                                      style:TextStyle(
                                        fontFamily:'varela',
                                        fontSize: 25.0,
                                        fontWeight:FontWeight.bold,
                                        color:Color(0xFF3A4742),
                                      )
                                  ),
                                  Container(
                                      height:40.0,
                                      width:40.0,
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        color:Colors.white,
                                      ),
                                      child:Center(
                                        child:Icon(Icons.favorite,
                                          color:isFavourite?Colors.red:Colors.blueGrey,
                                          size:15.0,
                                        ),

                                      )
                                  )
                                ],
                              )
                            ],
                          )

                      ),
                    ),
                    Positioned(
                      left:60.0,
                      top:25.0,
                      child:Container(
                        height:100,
                        width:100,
                        decoration: BoxDecoration(
                          image:DecorationImage(
                            image:AssetImage(imgPath),
                            fit:BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20.0),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder:(context)=>DetailsPage()
                    ));
                  },
                  child:Container(
                    height:50.0,
                    width:225.0,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color:Color(0xFF47303A),
                    ),
                    child: Center(
                      child: Text(
                          'Order Now',
                          style:TextStyle(
                            fontFamily:'nunito',
                            fontSize: 14.0,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ),


                )
              ],
            )
        )
    );
  }
}
