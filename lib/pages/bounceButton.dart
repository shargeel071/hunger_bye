import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hunger_bye/config/screen_config.dart';

class BounceButton extends StatefulWidget {
  final Decoration decoration;
  final Function onPressed;
  final Widget child;
  BounceButton({this.decoration, this.onPressed, this.child});

  @override
  _BounceButtonState createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton> with SingleTickerProviderStateMixin {


  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    _scale = 1 - _controller.value;
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
            child: GestureDetector(
              onTap: widget.onPressed,
              onTapDown: _tapDown,
              onTapUp: _tapUp,
              child: Transform.scale(
                scale: _scale,
                child: _animatedButton(),
              ),
            ),
          ),
        ],
    );
  }

  Widget  _animatedButton() {
    return Container(
      height: ScreenConfig.blockHeight * 7,
      width: ScreenConfig.blockWidth * 90,
       decoration: widget.decoration,
      // BoxDecoration(
      //     borderRadius: BorderRadius.circular(10.0),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Color(0x80000000),
      //         blurRadius: 12.0,
      //         offset: Offset(0.0, 5.0),
      //       ),
      //     ],
      //     gradient: widget.linearGradient,
    //LinearGradient(
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
            // colors: [
            //   Color(0xff20409A),
            //   Color(0xff1E3ACF),
            // ],

         // )
      //),
       child: widget.child
      // Center(
      //   child: Text(
      //     widget.title,
      //     style: TextStyle(
      //         fontSize: 20.0,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white),
      //   ),
      // ),
    );
  }
  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

