import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hunger_bye/config/screen_config.dart';
import 'package:hunger_bye/pages/signUp.dart';

import 'bounceButton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Center(
                child: Container(

                    height: ScreenConfig.blockHeight * 10,
                    width: ScreenConfig.blockWidth * 70,
                  decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage('assets/images/hungerByeMain.png'),
                    fit: BoxFit.fill)
                  ),

                ),
              ),

              SizedBox(height: ScreenConfig.blockHeight * 5, ),
              Container(
                height: ScreenConfig.blockHeight *53,
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
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),

                            ),

                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),
                            )
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
                       // print('hello');
                      },
                        child:  Center(
                          child: Text(
                           'Login',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(

                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => practice()));
                            // }
                           // ,
                            child: Text("Forgot Password?" , style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)
                        ),
                      ),

                      SizedBox(height: 20,),
                      BounceButton(
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),

                              border: Border.all(color: Colors.blueAccent)

                          ),
                        onPressed: () {
                        // print('hello');
                      },
                        child:  Center(
                          child: Row(
                           // mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Image.asset('assets/images/google.png'),
                              ),
                              SizedBox(width: 30,),
                              Text(
                                'SignUp with Google',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Text("OR " , style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),

              SizedBox(height: 10,),
              InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                },

                  child: Text("Sign Up" , style: TextStyle(color: Color(0xff20409A), fontWeight: FontWeight.bold,fontSize: 15),)
              ),


            ],
          ),
        ),
      ),
    );
  }
}
