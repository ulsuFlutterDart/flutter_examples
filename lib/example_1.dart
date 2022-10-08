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

      // Домашняя страница приложения
      // ИспользованиеDefaultTabController - один из способов создания
      // приложения с несколькими вкладками. Дело в том, что TabBar и TabBarView
      // должны иметь общий контроллер, который бы менял состояние одного виджета
      // в зависимости от состояния другого.
      // Переключаем вкладку в TabBar - нужно переключить вкладку в TabBarView.
      // И наоборот
      home: DefaultTabController(
        length: listOfTabs.length,
        child: Scaffold(
          // Шапка приложения
          appBar: AppBar(
            // Leading - крайний левый элемент шапки
            leading: Icon(Icons.start),

            // Title - основной элемент шапки (заголовок)
            title: Text('Пример верстки'),

            // Центрирование основного элемента (title)
            centerTitle: true,

            // Цвет шапки
            backgroundColor: Colors.grey,

            // Виджеты, которые идут в конце шапки (действия)
            actions: [
              // Кнопка в виде иконки
              IconButton(
                // onPressed - метод, который есть у каждой кнопки.
                // В нем описывается то, что будет происходить по нажатии на кнопку.
                onPressed: () {},
                // Icon - иконка. Есть возможность кастомизации
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
            ],

            // Меню для переключения вкладок
            bottom: TabBar(
              // Список вкладок (его можно найти внизу файла)
              tabs: listOfTabs,
              // Цвет индикатора текущей вкладки
              indicatorColor: Colors.white,
            ),
          ),

          // Тело Scaffold
          // TabBarView -
          body: TabBarView(
            children: [
              // Содержимое первой вкладки
              //
              //
              // Center - центрирует дочерние виджеты внутри родительского
              Center(
                // Виджет Padding позволяет задать отступы от виджета, который
                // находится внутри него
                child: Padding(
                  // Отступы
                  padding: const EdgeInsets.all(8.0),
                  // Колонка позволяет расположить виджеты вертикально
                  child: Column(
                    // Положение виджетов относительно двух осей
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    // Виджеты внутри колонки
                    children: [
                      // Виджет Text позволяет отображать текст
                      Text(
                        'Это текст',
                        // Есть возможность глубокой кастомизации текста
                        style: TextStyle(),
                      ),
                      //
                      ElevatedButton(
                        // Кастомизация кнопки
                        style: ElevatedButton.styleFrom(),
                        onPressed: () {},
                        // В child можно помещать не только текст
                        child: Text(
                          'Один тип кнопки',
                        ),
                      ),
                      //
                      ElevatedButton(
                        onPressed: () {},
                        // В child можно помещать не только текст
                        child: Icon(Icons.abc),
                      ),
                      //
                      TextButton(
                        onPressed: () {},
                        // В child можно помещать не только текст
                        child: Text('Другой тип кнопки'),
                      ),
                      //
                      TextButton(
                        onPressed: () {},
                        // В child можно помещать не только текст
                        child: Icon(Icons.add),
                      ),
                      // SizedBox просто занимает место на экране.
                      // Позволяет разграничить виджеты
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Text('Текст отделен от других'),
                      // Row аналогичен Column, только позволяет расположить
                      // элементы горизонтально
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Container аналогичен SizedBox, но у него есть
                          // возможность кастомизации
                          Container(
                            color: Colors.blueGrey,
                            height: 80,
                            width: 200,
                            // Поле для ввода данных
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.print),
                                labelText: 'Подсказка 1',
                                hintText: 'Подсказка 2',
                                helperText: 'Подсказка 3',
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.access_alarms),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              // Содержимое второй вкладки
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  // ListView.builder позволяет создавать прокручиваемый список
                  // виджетов. Главные его параметры:
                  // - itemCount (количество виджетов)
                  // - itemBuilder (метод, который и создает виджеты)
                  // Лучше применять ListView.builder так, как показано в примере.
                  // Список (массив) виджетов заранее заготовлен,
                  // itemCount - это длина массива,
                  // itemBuilder возвращает элемент из нашего массива, позиция
                  // которого равна index.
                  // Принцип работы напоминает цикл for:
                  // for(int index = 0; index < listOfTiles.length; index++){}
                  child: ListView.builder(
                    itemCount: listOfTiles.length,
                    itemBuilder: (context, index) {
                      return listOfTiles[index];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Tab> listOfTabs = [
  Tab(
    icon: Icon(Icons.home),
  ),
  Tab(
    icon: Icon(Icons.cloud),
  ),
];

List<ListTile> listOfTiles = [
  ListTile(title: Text('Первый')),
  ListTile(title: Text('Второй')),
  ListTile(title: Text('Третий')),
  ListTile(title: Text('Четвертый')),
  ListTile(title: Text('Пятый')),
  ListTile(title: Text('Повтор')),
  ListTile(title: Text('Первый')),
  ListTile(title: Text('Второй')),
  ListTile(title: Text('Третий')),
  ListTile(title: Text('Четвертый')),
  ListTile(title: Text('Пятый')),
  ListTile(title: Text('Повтор')),
  ListTile(title: Text('Первый')),
  ListTile(title: Text('Второй')),
  ListTile(title: Text('Третий')),
  ListTile(title: Text('Четвертый')),
  ListTile(title: Text('Пятый')),
  ListTile(title: Text('Повтор')),
  ListTile(title: Text('Первый')),
  ListTile(title: Text('Второй')),
  ListTile(title: Text('Третий')),
  ListTile(title: Text('Четвертый')),
  ListTile(title: Text('Пятый')),
  ListTile(title: Text('Повтор')),
  ListTile(title: Text('Первый')),
  ListTile(title: Text('Второй')),
  ListTile(title: Text('Третий')),
  ListTile(title: Text('Четвертый')),
  ListTile(title: Text('Пятый')),
  ListTile(title: Text('Повтор')),
];
