import 'package:flutter/material.dart';
import 'dart:math';

import 'package:telegram/chat.dart';
import 'package:telegram/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/chat': (context) => Chat(),
        '/profile': (context) => Profile()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int generateRandomInteger(int min, int max) {
    Random random = Random();
    return random.nextInt(max - min + 1) + min;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(190, 0, 136, 204),
        title: const Text(
          "Telegram",
          style: TextStyle(color: Colors.white),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: ListView.builder(
          itemCount: 200,
          itemBuilder: (BuildContext context, int index) {
            int randomNumber = generateRandomInteger(0, 909);
            return ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/chat");
              },
              leading: CircleAvatar(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                          image: NetworkImage(
                              "https://th.bing.com/th?id=OIP.2i5UaEHaQM3PYAYXQyM1AAAAAA&w=249&h=249&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2")))),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Name$index"),
                  Text(
                    "12:37pm",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest Message $index"),
                  Chip(
                    label: Text(
                      "$randomNumber",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blue,
                  )
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        tooltip: 'change',
        child: const Icon(Icons.message_outlined),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/profile");
              },
              child: UserAccountsDrawerHeader(
                  arrowColor: Color.fromARGB(190, 0, 136, 204),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  accountName: Text("folong201"),
                  accountEmail: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("folong201@gmail.com"),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text("New group"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Contact"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call_outlined),
              title: Text("Calls"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_pin_circle_outlined),
              title: Text("People NearBy"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.save_alt_outlined),
              title: Text("Ssaved Message"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text("Setting"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_add_outlined),
              title: Text("Invite frinds"),
              onTap: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
