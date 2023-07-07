import 'package:flutter/material.dart';
import 'package:ramayana/models/chapter.dart';
import 'package:ramayana/screens/chapter_screen.dart';

class ChapterTile extends StatelessWidget {
  final Chapter chapter;
  const ChapterTile({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChapterScreen(chapter: chapter),)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children:  [
                ClipRRect(
                  // borderRadius: const BorderRadius.only(
                  //   topLeft: Radius.circular(15),
                  //   topRight: Radius.circular(15),
                  // ),
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(chapter.coverPath, width: double.infinity, height: 250, fit: BoxFit.cover,)
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer, borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))),
                    padding:const  EdgeInsets.only(left: 5),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(chapter.title, style: Theme.of(context).textTheme.titleMedium,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           const Icon(Icons.schedule),
            //           const SizedBox(width: 6,),
            //           Text("$duration mins")
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           const Icon(Icons.work),
            //           const SizedBox(width: 6,),
            //           Text(complexityText)
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           const Icon(Icons.attach_money),
            //           const SizedBox(width: 6,),
            //           Text(affordabilityText)
            //         ],
            //       )
            //     ],
            //   ),
            // )
          ],
        ),

      ),
    );
  }
}