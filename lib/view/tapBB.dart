import 'package:flutter/material.dart';

class TapBB extends StatefulWidget {
  const TapBB({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TapBB();
}

class _TapBB extends State<TapBB> {
  static int index = 0;
  void on_tap(int i) {
    setState(() {
      index = i;
    });
  }

  static const IconData shopping_bag_outlined =
      IconData(0xf37d, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        onTap: on_tap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(shopping_bag_outlined), label: ""),
        ],
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
      );
}
