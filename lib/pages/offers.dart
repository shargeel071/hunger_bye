import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hunger_bye/config/screen_config.dart';

import 'bounceButton.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: ScreenConfig.blockHeight * 15, ),
              // Center(
              //   child: Container(
              //
              //     height: ScreenConfig.blockHeight * 10,
              //     width: ScreenConfig.blockWidth * 70,
              //
              //     child: Center(child: Text("PRODUCT",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff20409A)),)),
              //
              //   ),
              // ),

              SizedBox(height: ScreenConfig.blockHeight * 1, ),
              Container(
                height: ScreenConfig.blockHeight *61,
                width: ScreenConfig.blockWidth *100,

                child: Padding(padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),

                  child: Column(
                    children: <Widget>[
                      Container(

                        padding:EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.blue))
                              ),

                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Item Name",
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),

                            ),

                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.blue))
                              ),

                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Item Description",
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),

                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.blue))
                              ),

                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Item Price",
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),

                            ),

                          ],
                        ),
                      ),



                      SizedBox(height: 20,),
                      BounceButton(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x80000000),
                                blurRadius: 12.0,
                                offset: Offset(0.0, 5.0),
                              ),
                            ],
                            gradient:
                            LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff20409A),
                                Color(0xff1E3ACF),
                              ],

                            )

                        ),
                        onPressed: () {
                        },
                        child:  Center(
                          child: Text(
                            'Save Offer ',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      BounceButton(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x80000000),
                                blurRadius: 12.0,
                                offset: Offset(0.0, 5.0),
                              ),
                            ],
                            gradient:
                            LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff20409A),
                                Color(0xff1E3ACF),
                              ],

                            )

                        ),
                        onPressed: () {
                        },
                        child:  Center(
                          child: Text(
                            'Manage ',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
