import 'package:flutter/material.dart';
import 'package:ramayana/screens/about_screen.dart';
import 'package:ramayana/screens/contents_screen.dart';
import 'package:ramayana/widgets/cover.dart';
import 'package:ramayana/widgets/intro.dart';

class Home extends StatelessWidget {
  final VoidCallback toggleTheme;
  const Home({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: const Text("Ramayana"), actions: [
        IconButton(
            onPressed: toggleTheme,
            icon: Icon(Theme.of(context).brightness == Brightness.light
                ? Icons.dark_mode
                : Icons.light_mode)),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ));
            },
            icon: const Icon(Icons.info_outlined))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 8,
              ),
              const Cover(),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                child: ListTile(
                    tileColor: Theme.of(context).colorScheme.primaryContainer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: const CircleAvatar(
                      child: Icon(Icons.book),
                    ),
                    title: const Text("Read or Listen"),
                    onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ContentsPage(),
                          ),
                        )),
              ),
              
              // ListTile(
              //   onTap: () => Navigator.of(context).push(
              //           MaterialPageRoute(
              //             builder: (context) => const MoviesScreen(),
              //           ),
              //         ),
              //   tileColor: Theme.of(context).colorScheme.primaryContainer,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15)),
              //   leading: const CircleAvatar(
              //     child: Icon(Icons.movie),
              //   ),
              //   title: const Text("Explore Movies"),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // ListTile(
              //   onTap: () => Navigator.of(context).push(
              //           MaterialPageRoute(
              //             builder: (context) => const SongsScreen(),
              //           ),
              //         ),
              //   tileColor: Theme.of(context).colorScheme.primaryContainer,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15)),
              //   leading: const CircleAvatar(
              //     child: Icon(Icons.music_note_rounded),
              //   ),
              //   title: const Text("Explore Songs"),
              // ),
              
              const SizedBox(
                height: 2,
              ),
              const Intro(),             
            ],
          ),
        ),
      ),
    );
  }
}
