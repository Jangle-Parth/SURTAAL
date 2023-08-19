import 'package:flutter/material.dart';
import 'package:surtaal/Services/category_operations.dart';
import 'package:surtaal/Services/music_operations.dart';
import 'package:surtaal/models/Categorys.dart';
import 'package:surtaal/models/music.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('$message'),
      actions: [
        Icon(Icons.settings),
        Padding(padding: EdgeInsets.only(right: 30))
      ],
    );
  }

  Widget createCategory(Categorys category) {
    return Container(
      color: Colors.grey[500],
      child: Row(children: [
        Padding(padding: EdgeInsets.all(10)),
        Image.network(
          category.imageUrl,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            category.Name,
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }

  List<Widget> createListofCategories() {
    List<Categorys> categorylist = Categoryoperations.getCategories();
    List<Widget> categories = categorylist
        .map((Categorys category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createmusic(Music music) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.all(30),
          child: Image.network(
            music.imageURL,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          music.name,
          style: TextStyle(color: Colors.white70),
        ),
        Text(
          music.Description,
          style: TextStyle(color: Colors.white70),
        )
      ],
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicllist = MusicOperations.getMusic();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.white70, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return createmusic(musicllist[index]);
            },
            itemCount: musicllist.length,
          ),
        ),
      ],
    );
  }

  Widget creategrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      child: GridView.count(
        childAspectRatio: 30 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: createListofCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              createAppBar('Good Morning'),
              SizedBox(
                height: 10,
              ),
              creategrid(),
              createMusicList('Made For You'),
              createMusicList('Popular'),
            ],
          ),
          color: Colors.black87,
        ),
      ),
    );
  }
}
