import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),

            // Masukkan Coding disini jangan rubah lainnya
            //
            //
            //
            //
            //
            //
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
  Widget callList(String name, IconData iconData, Color,String Time NetworkImage networkingImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child:LisTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 35,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Row(
          children:[
            Icon(
              iconData,
              color: iconColor,
              size: 25,
            ),
            SizedBox(width:8),
           ),    
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 30,
          color: Colors.teal,
        ),
      ),
    );
  }
}
