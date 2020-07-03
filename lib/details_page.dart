import 'package:flutter/material.dart';
//import 'package:feather_icons_flutter/feather_icons_flutter.dart';
class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(
            children:[
              Stack(
                children: <Widget>[
                  Container(
                    height:MediaQuery.of(context).size.height-20.0,
                    width: MediaQuery.of(context).size.width,
                    color:Color(0xFFFC93E8),
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height/2,
                    child:Container(
                      height:MediaQuery.of(context).size.height/2 - 20.0,
                      width:MediaQuery.of(context).size.width,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)
                        ),
                        color:Colors.white,
                      ),
                    ),
                  ),
                  //contents
                  Positioned(
                    top:MediaQuery.of(context).size.height/2+25,
                    left:15.0,
                    child:Container(
                        height:MediaQuery.of(context).size.height/2-50.0,
                        width:MediaQuery.of(context).size.width,
                        //color: Colors.red,
                        child:ListView(
                          children:[
                            Text(
                                'Preparation Time',
                                style:TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xFF726B68),
                                )
                            ),
                            SizedBox(height:7.0),
                            Text(
                                '5min',
                                style:TextStyle(
                                  fontFamily:'nunito',
                                  fontSize:14.0,
                                  fontWeight:FontWeight.bold,
                                  color:Color(0xFF726B68),
                                )
                            ),
                            SizedBox(height:7.0),
                            Text(
                                'Ingredients',
                                style:TextStyle(
                                  fontFamily:'nunito',
                                  fontSize:14.0,
                                  fontWeight:FontWeight.bold,
                                  color:Color(0xFF726B68),
                                )
                            ),
                            SizedBox(height:20.0),
                            Container(
                                height:110.0,
                                child:ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    buildIngredientItem(
                                      'Water',
                                      Icon(Icons.wb_sunny,
                                          size:15,color:Colors.white),
                                      Color(0xFF726B68),),
                                    buildIngredientItem(
                                      'Sugar',
                                      Icon(Icons.battery_std,
                                          size:15,color:Colors.white),
                                      Color(0xFF615955),),
                                    buildIngredientItem(
                                      'Toffee Nut Syrup',
                                      Icon(Icons.school,
                                          size:15,color:Colors.white),
                                      Color(0xFF615955),),
                                    buildIngredientItem(
                                      'Natural Flavours',
                                      Icon(Icons.airplay,
                                          size:15,color:Colors.white),
                                      Color(0xFF615955),),
                                    buildIngredientItem(
                                      'Vanilla Syrup',
                                      Icon(Icons.flag,
                                          size:15,color:Colors.white),
                                      Color(0xFF615955),),
                                  ],
                                )

                            ),
                            Padding(
                                padding:const EdgeInsets.only(right:35.0),
                                child:Container(
                                  height:0.5,
                                  color:Colors.black,
                                )
                            ),
                            Text(
                              'Nutrition Information',
                              style:TextStyle(
                                fontFamily:'nunito',
                                fontSize:14.0,
                                fontWeight:FontWeight.bold,
                                color:Color(0xFF726B68),
                              ),
                            ),
                            SizedBox(height:10.0),
                            Row(
                              children: <Widget>[
                                Text(
                                    'Calories',
                                    style:TextStyle(
                                      fontFamily:'nunito',
                                      fontSize:14.0,
                                      fontWeight:FontWeight.bold,
                                      color:Color(0xFF726B68),
                                    )
                                ),
                                Text(
                                    ':250',
                                    style:TextStyle(
                                      fontFamily:'nunito',
                                      fontSize:14.0,
                                      fontWeight:FontWeight.bold,
                                      color:Color(0xFF726A50),
                                    )
                                )
                              ],
                            ),
                            SizedBox(height:10.0),
                            Row(
                              children: <Widget>[
                                Text(
                                    'Proteins',
                                    style:TextStyle(
                                      fontFamily:'nunito',
                                      fontSize:14.0,
                                      fontWeight:FontWeight.bold,
                                      color:Color(0xFF726B68),
                                    )
                                ),
                                Text(
                                    ':10g',
                                    style:TextStyle(
                                      fontFamily:'nunito',
                                      fontSize:14.0,
                                      fontWeight:FontWeight.bold,
                                      color:Color(0xFF726A50),
                                    )
                                )
                              ],
                            ),
                            SizedBox(height:10.0),
                            Row(
                              children: <Widget>[
                                Text(
                                    'Caffeine',
                                    style:TextStyle(
                                      fontFamily:'nunito',
                                      fontSize:14.0,
                                      fontWeight:FontWeight.bold,
                                      color:Color(0xFF726B68),
                                    )
                                ),
                                Text(
                                    ':150mg',
                                    style:TextStyle(
                                      fontFamily:'nunito',
                                      fontSize:14.0,
                                      fontWeight:FontWeight.bold,
                                      color:Color(0xFF726A50),
                                    )
                                )
                              ],
                            ),
                            SizedBox(height:15.0),
                            Padding(
                                padding:const EdgeInsets.only(right:35.0),
                                child:Container(
                                  height:0.5,
                                  color:Colors.black,
                                )
                            ),
                            SizedBox(height:10.0),
                            Padding(
                                padding:EdgeInsets.only(right:25.0),
                                child:Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35.0),
                                        color:Color(0xFF47303A)
                                    ),
                                    child:Center(
                                      child: Text('Make Order',
                                        style:TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                )
                            ),
                            SizedBox(height:5.0),

                          ],
                        )
                    ),
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height/4,
                    left:255.0,
                    child: Container(
                      height:250,
                      width:300,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image: AssetImage('images/coffepic1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top:25.0,
                      left:15.0,
                      child:Container(
                          height:300.0,
                          width:250.0,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                      width:150.0,
                                      child:Text('Caramel Macchiato',
                                        style:TextStyle(
                                          fontFamily: 'varela',
                                          fontSize:30.0,
                                          fontWeight: FontWeight.bold,
                                          color:Colors.white,
                                        ),
                                      )
                                  ),
                                  SizedBox(height:15.0),
                                  Container(
                                    height:40.0,
                                    width:40.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color:Colors.white,
                                    ),
                                    child: Center(
                                        child:Icon(Icons.favorite,size:18.0,color:Colors.red)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:10.0),
                              Container(
                                width:170,
                                child:Text('Freshly Steamed Mil with vanilla flavoured syrup is marked with espresso and topeped with caramel drizzle for an of-so-sweet finish',

                                  style:TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 13.0,
                                    color:Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                      )
                  )
                ],
              )
            ]
        )
    );
  }
  buildIngredientItem(String name,Icon iconname,Color bgcolorname)
  {
    return Padding(
        padding:EdgeInsets.only(right:10.0),
        child:Column(
            children:[
              Container(
                  height:50.0,
                  width:50.0,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color:bgcolorname,
                  ),
                  child:Center(
                    child:iconname,
                  )
              ),
              SizedBox(height:4.0),
              Container(
                width:60.0,
                child: Center(
                  child:Text(name,
                    textAlign:TextAlign.center,
                    style:TextStyle(
                      fontFamily: 'nunito',
                      fontSize:12.0,
                      color:Colors.black,
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}
