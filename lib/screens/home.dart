import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:surtaal/Services/category_operations.dart';
import 'package:surtaal/models/Categorys.dart';

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

  Widget creategrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 400,
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
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            createAppBar('Good Morning'),
            SizedBox(
              height: 10,
            ),
            creategrid()
          ],
        ),
        color: Colors.black87,
      ),
    );
  }
}
