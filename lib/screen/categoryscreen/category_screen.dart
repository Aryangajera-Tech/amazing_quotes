import 'package:flutter/material.dart';
import 'package:amazing_quotes/screen/categoryscreen/widget.dart';
import 'package:amazing_quotes/utils/comman.dart';

import '../showAllScreen/showall_Screen.dart';

class Category_screen extends StatefulWidget {
  Category_screen({Key? key}) : super(key: key);

  @override
  State<Category_screen> createState() => _Category_screenState();
}

class _Category_screenState extends State<Category_screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: getappbar(text: "Amazing Quotes", center: true),
      body: SafeArea(
          child: (ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(color: Colors.white, child: Imgslider()),
          Container(
            height: h * 0.4,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: w * 0.6),
                  child: gettext(text: "Most Popular", color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getcontainer(
                        context: context,
                        color: Colors.blue,
                        text: "Love Quotes"),
                    getcontainer(
                        context: context,
                        color: Colors.green.shade400,
                        text: "Swami Vivekananda Quotes")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getcontainer(
                        context: context,
                        color: Colors.amber.shade400,
                        text: "Albert Einstein Quotes"),
                    getcontainer(
                        context: context,
                        color: Colors.pink.shade500,
                        text: "Motivational Quotes")
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h * 0.015),
            height: h * 0.25,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    gettext(text: "Quotes by Category", color: Colors.black),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShowAll_Screen(),
                              ));
                        },
                        child: gettext(text: "Show All", color: Colors.black38))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.red.shade300,
                          text: "Happyness Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.green.shade400,
                          text: "Success Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Color.fromARGB(255, 130, 110, 69),
                          text: "Love Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.pink.shade500,
                          text: "Life Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.purple.shade500,
                          text: "Motivational Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.amber.shade400,
                          text: "Sad Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.cyan.shade500,
                          text: "Albert Einstein Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.blueGrey.shade500,
                          text: "Swami Vivekananda Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.red.shade500,
                          text: "Helen Keller Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      getcontainer(
                          context: context,
                          color: Colors.green.shade300,
                          text: "Dr. Seuss Quotes"),
                      SizedBox(
                        width: w * 0.03,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h * 0.015),
            height: h * 0.4,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: w * 0.5),
                  child: gettext(text: "Quotes by Author", color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getcontainer(
                        context: context,
                        color: Colors.brown,
                        text: "Albert Einstein Quotes"),
                    getcontainer(
                        context: context,
                        color: Colors.purple.shade400,
                        text: "Swami Vivekananda Quotes")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getcontainer(
                        context: context,
                        color: Colors.cyan.shade400,
                        text: "Helen Keller Quotes"),
                    getcontainer(
                        context: context,
                        color: Colors.orange.shade500,
                        text: "Dr. Seuss Quotes")
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h * 0.015),
            height: h * 0.4,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: w * 0.7),
                  child: gettext(text: "Featured", color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getcontainer(
                        context: context,
                        color: Colors.blueGrey,
                        text: "Success Quotes"),
                    getcontainer(
                        context: context,
                        color: Colors.yellowAccent.shade700,
                        text: "Life Quotes")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getcontainer(
                        context: context,
                        color: Colors.green.shade400,
                        text: "Sad Quotes"),
                    getcontainer(
                        context: context,
                        color: Colors.red.shade500,
                        text: "Dr. Seuss Quotes")
                  ],
                ),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
