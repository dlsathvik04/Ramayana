import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  Future<String> loadAsset() async {
    return rootBundle.loadString('assets/text/intro.txt');
  }

  @override
  Widget build(context) {
    return FutureBuilder<String>(
        future: loadAsset(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Text("Synopsis: ", style: Theme.of(context).textTheme.titleLarge)
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   image: const DecorationImage(
                        //       image: AssetImage("assets/images/cover.jpg"),
                        //       fit: BoxFit.cover, opacity: 0.2),
                        //   borderRadius: BorderRadius.circular(15)
                        // ),
                        padding: const EdgeInsets.all(10),
                        child: snapshot.hasData
                            ? Text(
                                snapshot.data!,
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.justify,
                              )
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
