import 'package:flutter/material.dart';

Widget buildImage(Widget image, int index) => Container(
      margin: EdgeInsets.all(8),
      // width: 150,
      decoration: BoxDecoration(
          // border: Border.all(),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 4, blurStyle: BlurStyle.outer)],
          borderRadius: BorderRadius.circular(10)),
      // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),

      child: Stack(
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                "images/resort/resort.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, top: 32.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Resort Couple",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, top: 90.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Luxurius properties that gives you a relaxing time",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
