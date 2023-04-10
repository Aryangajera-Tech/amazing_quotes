import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/Details_screen/details_screen.dart';

InkWell getcontainer(
    {required Color? color,
    required BuildContext context,
    required String text}) {
  return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details_Screen(type: text),
            ));
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1),
          )));
}

Text gettext({required String text, required Color color}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w500),
  );
}

Column getlisttile(
    {required String quotesname,
    required Color color,
    required BuildContext context}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        height: 90,
        margin: const EdgeInsets.all(5),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: Text(
                  quotesname[0],
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(quotesname,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1)),
          ),
        ]),
      ),
      SizedBox(
        height: 5,
      )
    ],
  );
}

Container getdetailscontainer({
  required String text,
}) {
  return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.only(top: 35),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 1),
        ),
      ));
}

AppBar getappbar({required String text, bool? center}) {
  return AppBar(
      centerTitle: center,
      backgroundColor: Colors.red.shade400,
      title: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ));
}

Text getdatatext({required String text, required String font}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontFamily: font,
        fontWeight: FontWeight.bold,
        letterSpacing: 1),
  );
}
