import 'dart:math';

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(190, 0, 136, 204),
          iconTheme: IconThemeData(color: Colors.white),
          actions: [Icon(Icons.more_vert)],

          // leading: CircleAvatar(
          //   child: Icon(Icons.person_outline),
          // ),
          title:  Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Color.fromARGB(190, 0, 136, 204),
                
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                          image: NetworkImage(
                              "https://th.bing.com/th?id=OIP.2i5UaEHaQM3PYAYXQyM1AAAAAA&w=249&h=249&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"))
             
                  )
                
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "User",
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: ListView.builder(
                reverse: true,
                itemCount: 40,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ChatBubble(context, index),
                    ),
                  );
                }),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.ac_unit),
                  Flexible(child: TextFormField()),
                  Icon(Icons.pin)
                ],
              ))
        ],
      ),
    ));
    ;
  }
}

Widget ChatBubble(BuildContext context, int index) {
  int ran = Random().nextInt(4) + 2;
  if (index % ran != 0) {
    return Padding(
      padding: EdgeInsets.only(right: 102.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("hi lorem ipsum dlor si nmaet hierr $index",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  } else {
    return Padding(
      padding: EdgeInsets.only(left: 102.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(197, 77, 240, 83), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello lorem iosum l=dolor namet sip hir $index",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 