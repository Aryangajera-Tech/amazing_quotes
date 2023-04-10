import 'package:flutter/material.dart';
import '../../model/quotes.dart';
import '../../utils/comman.dart';
import '../Details_screen/details_screen.dart';

class ShowAll_Screen extends StatefulWidget {
  ShowAll_Screen({Key? key}) : super(key: key);

  @override
  State<ShowAll_Screen> createState() => _ShowAll_ScreenState();
}

class _ShowAll_ScreenState extends State<ShowAll_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getappbar(text: "All Qutotes"),
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: type.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details_Screen(
                              type: type[index],
                            )));
              },
              child: getlisttile(
                  context: context,
                  quotesname: type[index],
                  color: Colors.red.shade400),
            );
          },
        ),
      ),
    );
  }
}
