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
            callList("Dimas Hendra", Icons.call_received, Colors.green, "Kemarin, 22:00", NetworkImage("https://i.ibb.co/NjYyCnj/Whats-App-Image-2022-05-31-at-11-58-17.jpg")),
            callList("Ibu", Icons.call_made, Colors.green, "Kemarin, 17:15", NetworkImage("https://i.ibb.co/wRHRQgW/Whats-App-Image-2022-05-31-at-11-55-52.jpg")),
            callList("Safira", Icons.call_missed, Colors.red, "Mei 25, 12:04", NetworkImage("https://i.ibb.co/YdhbRbF/th.jpg")),
            callList("Adelina", Icons.call_made, Colors.green, "Mei 05, 07:01", NetworkImage("https://i.ibb.co/LJqgWGQ/adel.jpg")),
            callList("Putri", Icons.call_missed, Colors.red, "April 17, 13:04", NetworkImage("https://i.ibb.co/4Y4Pmp9/putri2.jpg")),
            callList("Icha", Icons.call_made, Colors.green, "April 10, 09:07", NetworkImage("https://i.ibb.co/qJzBmvQ/icha.jpg")),
            callList("Dimas Hendra", Icons.call_received, Colors.green, "April 01, 19:09", NetworkImage("https://i.ibb.co/NjYyCnj/Whats-App-Image-2022-05-31-at-11-58-17.jpg")),
            callList("Rafi", Icons.call_made, Colors.green, "Maret 28, 15:03", NetworkImage("https://i.ibb.co/5MjfWpR/rafi.png")),
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

  Widget callList(String name, IconData iconData, Color iconColor, String Time, NetworkImage networkImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 35,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
              size: 25,
            ),
            SizedBox(width: 6),
            Text(
              Time,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 25,
          color: Colors.teal,
        ),
      ),
    );
  }
}
