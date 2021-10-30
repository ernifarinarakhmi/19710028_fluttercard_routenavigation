import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new belajarcard()));
}

class belajarcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portal Ramadhan"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardSaya(
                icon: Icons.access_alarm_sharp,
                teks: "Jadwal imsak",
                warnaicon: Colors.pink),
            CardSaya(
                icon: Icons.place,
                teks: "Masjid terdekat",
                warnaicon: Colors.green),
            CardSaya(
                icon: Icons.access_alarm_rounded,
                teks: "Jadwal buka puasa",
                warnaicon: Colors.brown),
            CardSaya(
                icon: Icons.music_note,
                teks: "Murotal Al-Qur'an",
                warnaicon: Colors.black),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({required this.icon, required this.teks, required this.warnaicon});

  final IconData icon;
  final String teks;
  final Color warnaicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.all(3.0),
      color: Colors.pink,
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 80.0,
              color: warnaicon,
            ),
            Text(
              teks,
              style: TextStyle(fontSize: 23.0),
            )
          ],
        ),
      ),
    );
  }
}
