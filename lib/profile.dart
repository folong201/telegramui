import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          actions: [
            Icon(Icons.search_outlined),
            Icon(Icons.more_vert)
          ],
          title:Row(
            children: [
           CircleAvatar(child: Icon(Icons.person_outline)),
           SizedBox(width: 16,),
               Text("Profile Page",style: TextStyle(color: Colors.black),),
            ],
          )

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: ListTile(
                leading: Icon(Icons.camera_enhance),
                title: Text("Set profile Picture",style: TextStyle(color: Colors.blue),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
             Container(
              decoration: BoxDecoration(color: Colors.white),
              child:Column(
                children: [
                  Text("Acount"),
                   ListTile(  
                      title: Text(
                        "+23789562578",
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text("Tap to change Phone Number"),
                    ), 
                    ListTile(
                      title: Text(
                        "@folong201",
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text("UserName"),
                    ), 
                    ListTile(
                      title: Text(
                        "Bio",
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text("few word for my bio"),
                    ), 
                ],
              )
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}