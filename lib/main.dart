import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Navigasi',
      home: HalamanBeranda(),
    );
  }
}

class HalamanBeranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum Navigasi'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Image.asset(
                'assets/logo_telkom_university.png',
                width: 80,
              ),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Lihat Koleksi'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanJelajah()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.man_3),
              title: Text('Akun'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanAkun()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Beranda'),
      ),
    );
  }
}

class HalamanJelajah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Koleksi'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Lihat Koleksi'),
      ),
    );
  }
}

class HalamanAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Akun'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Akun'),
      ),
    );
  }
}
