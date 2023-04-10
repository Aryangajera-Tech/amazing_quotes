// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:amazing_quotes/utils/comman.dart';
import 'package:share_plus/share_plus.dart';
import 'controller.dart';

class Data_Screen extends StatefulWidget {
  String text;
  Data_Screen({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  State<Data_Screen> createState() => _Data_ScreenState();
}

class _Data_ScreenState extends State<Data_Screen> {
  DataController dataController = DataController();
  @override
  void initState() {
    dataController.changefont();
    dataController.changeimg();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(dataController.bgimg), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: getdatatext(
                  text: widget.text, font: dataController.selectfont),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      dataController.changeimg();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.photo,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      dataController.changefont();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.font_download,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.copy,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: h * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
