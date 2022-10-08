// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // SafeArea позволяет располагать дочерние виджеты в безопасной зоне экрана
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          // Выезжающее боковое меню. Можно вызвать либо свайпом вправо из
          // крайней левой части экрана, либо по кнопке с тремя линиями
          drawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Один из возможных вариантов оформления верхней части Drawer
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    accountEmail: Text('Почта'),
                    accountName: Text('Имя'),
                    // CircleAvatar - виджет, который удобно использовать для
                    // отображения аватарки пользователя
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 30,
                      // Картинка, которую можно получить по ссылке из
                      // интернета
                    ),
                  ),
                  // Другой вариант оформления верхней части Drawer
                  // Этими виджетами ограничиваться не стоит
                  // Можно дать волю фантазиям
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Row(
                      children: [
                        Text('One'),
                        Text('Two'),
                      ],
                    ),
                  ),
                  // Виджет, из которого удобно создавать списки
                  ListTile(
                    // Начало виджета
                    leading: Icon(Icons.one_k),
                    // Его основная часть
                    title: Text('Первый элемент'),
                    // Крайняя часть виджета
                    trailing: Icon(Icons.close),
                  ),
                  ListTile(
                    leading: Icon(Icons.one_k),
                    title: Text('Второй элемент'),
                    trailing: Icon(Icons.close),
                  ),
                  ListTile(
                    leading: Icon(Icons.one_k),
                    title: Text('Третий элемент'),
                    trailing: Icon(Icons.close),
                  ),
                  ListTile(
                    leading: Icon(Icons.one_k),
                    title: Text('Четвертый элемент'),
                    trailing: Icon(Icons.close),
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            // Stack позволяет накладывать виджеты друг на друга
            child: Stack(
              // Регулирует взаимное расположение виджетов
              alignment: Alignment.center,
              // Дочерние виджеты
              children: [
                // Align позволяет расположить виджеты по краям экрана
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Сверху по центру'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Снизу слева'),
                  ),
                ),
                // Виджет, позволяющий отобразить картинку из интернета по ссылке
                Image.network(
                  'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/325466_1100-800x825.jpg',
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Поверх'),
                ),
              ],
            ),
          ),
          // Плавающая кнопка. Располагается поверх всех виджетов
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(),
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
