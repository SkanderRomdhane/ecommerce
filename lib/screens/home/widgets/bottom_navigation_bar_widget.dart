import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme:
          Theme.of(context).iconTheme.copyWith(color: Colors.black),
      unselectedLabelStyle: const TextStyle(height: 0),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard_sharp),
          label: '',
        ),
      ],
    );
  }
}
