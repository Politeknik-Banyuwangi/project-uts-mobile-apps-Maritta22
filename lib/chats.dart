import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget chatList(String name, String pesan, String waktu, IconData iconD, Color iconC, NetworkImage mdjpeg) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: mdjpeg,
          radius: 35,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(children: [
          Icon(
            iconD,
            size: 25,
            color: iconC,
          ),
          SizedBox(width: 6),
          Text(
            pesan,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ]),
        trailing: Text(waktu),
      ),
    );
  }
}
