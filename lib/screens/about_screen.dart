import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const  EdgeInsets.all(25),
          height: MediaQuery.of(context).size.height*0.7,
          child: Column(children: [
            Text("About", style: Theme.of(context).textTheme.titleLarge),
            Text("This Project is Developed for evaluation for the course AVP211 in the year 2023, under the guidance of our teacher Aswathy Chandran.", style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
            const Spacer(),
            Text("Developers", style: Theme.of(context).textTheme.titleLarge),
            Text("Margana Girish Vardhan", style: Theme.of(context).textTheme.bodySmall,),
            Text("Shinoy Yandra", style: Theme.of(context).textTheme.bodySmall,),
            Text("Vangapandu Rithin Chand", style: Theme.of(context).textTheme.bodySmall,),
            Text("Surya Vamsi Vema", style: Theme.of(context).textTheme.bodySmall,),
            Text("Rajendra Kumar Vesapogu", style: Theme.of(context).textTheme.bodySmall,),
            Text("Lekha Sathvik Devabathini", style: Theme.of(context).textTheme.bodySmall,),
            const Spacer(),
            Text("Disclaimer", style: Theme.of(context).textTheme.titleLarge),
            Text("This website may contain content that is not authorized for use by its owner. This content may include or may have references to copyrighted material, such as images and text. We are using this content under the fair use doctrine, which allows for the limited use of copyrighted material without permission from the copyright holder.", style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
            Text("We believe that our use of this content falls within the guidelines of fair use. However, if you believe that your copyrighted material has been used in a way that constitutes copyright infringement, please contact us and we will remove it immediately(Section 107 of the Copyright Act)", style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
            
          ],),
        )
      ),
    );
  }
}