import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.1),
      height: MediaQuery.of(context).size.height*0.4,
      decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/cover.jpg"),
                          fit: BoxFit.fitHeight),
                      borderRadius: BorderRadius.circular(15)
                    ),
    );
  }
}