// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Icon(Icons.home_work_rounded),
        ),
        // Нижнее меню навигации.
        // Меняйте BottomAppBarExample BottomNavigationBarExample, чтобы увидеть
        // разницу. Это два распространенных варианта отображения подобного меню
        bottomNavigationBar: BottomNavigationBarExample(),
      ),
    );
  }
}

class BottomAppBarExample extends StatelessWidget {
  const BottomAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cloud_sharp),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarExample extends StatelessWidget {
  const BottomNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // Тип меню. В данном случае все иконки будут одного размера.
      // При варианте shifting текущая иконка будет больше в сравнении с другими
      type: BottomNavigationBarType.fixed,
      // Цвет текущей иконки
      selectedItemColor: Colors.white,
      // Цвет иконок, когда они не являются текущими
      unselectedItemColor: Colors.black,
      // Цвет текущего текста
      selectedLabelStyle: TextStyle(
        color: Colors.white,
      ),
      // Аналогично
      unselectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
      // Показывать ли надпись под текущей иконкой
      showSelectedLabels: true,
      // Показывать ли надпись под иконками, кроме текущей
      showUnselectedLabels: true,
      // Цвет меню
      backgroundColor: Colors.blueGrey,
      // Иконки на панели
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.cloud_sharp,
          ),
          label: 'cloud_sharp',
        ),
      ],
    );
  }
}

enum Something {
  one,
  two,
}
