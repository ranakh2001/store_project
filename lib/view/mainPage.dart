import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';
import 'bag.dart';
import 'home.dart';
import 'personal.dart';
import 'search.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pages = [
    {'page':  HomePage()},
    {'page':  Search()},
    {'page':  Personal()},
    {'page':  Bag()},
  ];
  static int index = 0;
  void on_tap(int i) {
    setState(() {
      index = i;
    });
  }

  static const IconData shopping_bag_outlined =
      IconData(0xf37d, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: index==1? AppBar(
          leading: Image.asset(
            "assets/images/logo.png",
            width: 150,
            height: 150,
          ),
          title: const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              iconColor: Colors.lightBlue
            ),
          ),
        ):
        AppBar(
          centerTitle: true,
          title: Image.asset(
            "assets/images/logo.png",
            width: 150,
            height: 150,
          ),
        ),
        body: pages[index]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: on_tap,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            BottomNavigationBarItem(
                icon: Icon(shopping_bag_outlined), label: ""),
          ],
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.black,
          currentIndex: index,
          type: BottomNavigationBarType.shifting,
        ),
      );
}
