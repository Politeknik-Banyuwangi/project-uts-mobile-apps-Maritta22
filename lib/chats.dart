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
            chatList("Adelina", "Okey le", "12.30", Icons.done_all, Colors.grey, NetworkImage("https://i.ibb.co/LJqgWGQ/adel.jpg")),
            chatList("Safira", "iy le", "12.17", Icons.done, Colors.grey, NetworkImage("https://i.ibb.co/YdhbRbF/th.jpg")),
            chatList("Kelas 2 TID", "Anda: piye rek?", "12.00", Icons.done_all, Colors.grey, NetworkImage("https://i.ibb.co/tmZ7FGW/owl.png")),
            chatList("Ibu", "Enggeh", "11.10", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/wRHRQgW/Whats-App-Image-2022-05-31-at-11-55-52.jpg")),
            chatList("Fajar", "Iy mas", "10.40", Icons.done_all, Colors.grey, NetworkImage("https://i.ibb.co/DRZdj9R/fajar.jpg")),
            chatList("Rahmad", "Iy", "10.40", Icons.done, Colors.grey, NetworkImage("https://i.ibb.co/8XQWV61/rahmad.png")),
            chatList("Tari", "Nandi mbk?", "09.50", Icons.done_all, Colors.grey, NetworkImage("https://i.ibb.co/qFjqG9s/tari.png")),
            chatList("Adit", "Mbo", "09.41", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/z2ZGzVb/adit.jpg")),
            chatList("Sezha", "Ok", "09.40", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/746pwNx/sezha.png")),
            chatList("Rafi", "Mas", "09.33", Icons.done, Colors.grey, NetworkImage("https://i.ibb.co/5MjfWpR/rafi.png")),
            chatList("Ayah", "Mpon", "09.29", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/9vdwmwR/ayah.jpg")),
            chatList("Dava", "Ok ws dap", "09.25", Icons.done_all, Colors.grey, NetworkImage("https://i.ibb.co/dKpChyJ/dava.png")),
            chatList("+6285779564678", "Taro teras aja mas", "09.25", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/KhXngDz/kurir.jpg")),
            chatList("Restu", "Iy tu", "09.10", Icons.done, Colors.grey, NetworkImage("https://i.ibb.co/9vvKWqk/restu.jpg")),
            chatList("Hany", "Makasih", "09.10", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/94N008W/hany.jpg")),
            chatList("Aracely", "Ok cel", "Kemarin", Icons.done_all, Colors.grey, NetworkImage("https://i.pinimg.com/474x/2e/a1/a9/2ea1a9be7483312fb246fae20d73fb4e.jpg")),
            chatList("Khusus Info", "Iy rek", "Kemarin", Icons.done_all, Colors.blue, NetworkImage("hhttps://i.pinimg.com/originals/17/c5/39/17c539e287a335e5f5a7eb3cc97e46ed.jpg")),
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
