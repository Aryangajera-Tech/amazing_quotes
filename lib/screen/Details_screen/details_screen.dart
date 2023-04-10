// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:amazing_quotes/utils/comman.dart';
import '../../model/quotes.dart';
import '../datascreen/data_screen.dart';

class Details_Screen extends StatefulWidget {
  String? type;
  Details_Screen({
    Key? key,
    this.type,
  }) : super(key: key);

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: getappbar(text: widget.type.toString()),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: quoteslist.length,
        itemBuilder: (BuildContext context, int index) {
          return widget.type == quoteslist[index].type
              ? InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Data_Screen(
                            text: quoteslist[index].quote,
                          ),
                        ));
                    setState(() {});
                  },
                  child: getdetailscontainer(text: quoteslist[index].quote))
              : SizedBox();
        },
      ),
    );
  }
}
