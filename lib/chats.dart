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
            chatList("Dimas Hendra", "He.em", "13.12", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/NjYyCnj/Whats-App-Image-2022-05-31-at-11-58-17.jpg")),
            chatList("Putri", "Ok", "13.01", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/4Y4Pmp9/putri2.jpg")),
            chatList("Adelina", "Okey le", "12.30", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/LJqgWGQ/adel.jpg")),
            chatList("Safira", "iy le", "12.17", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/YdhbRbF/th.jpg")),
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
