import 'package:flutter/material.dart';
import 'package:surtaal/models/music.dart';
import 'package:surtaal/screens/home.dart';
import 'package:surtaal/screens/search.dart';
import 'package:surtaal/screens/yourlib.dart';
import 'package:audioplayers/audioplayers.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = new AudioPlayer();
  var Tabs = [];
  int CurrentTabIndex = 0;
  Music? music;
  Widget miniPlayer(Music? music) {
    this.music = music;
    setState(() {});
    if (music == null) {
      return SizedBox();
    }
    Size devicesize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.grey.shade800,
      width: devicesize.width,
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: EdgeInsets.only(left: 40),
            child: Image.network(music.imageURL, fit: BoxFit.cover)),
        Container(
          child: Text(
            music.name,
            style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 40),
          child: IconButton(
              onPressed: () async {
                await _audioPlayer.play(music.audiourl);
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white54,
              )),
        )
      ]),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [Home(miniPlayer), Search(), YourLib()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[CurrentTabIndex],
      backgroundColor: Colors.black45,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
              currentIndex: CurrentTabIndex,
              onTap: (CurrentIndex) {
                CurrentTabIndex = CurrentIndex;
                setState(() {});
              },
              selectedLabelStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
              selectedItemColor: Colors.white,
              backgroundColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.white),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.library_books, color: Colors.white),
                    label: 'Library')
              ]),
        ],
      ),
    );
  }
}
