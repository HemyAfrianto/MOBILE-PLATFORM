import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final teknik = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/unnamed.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Fakultas Teknik Uniiveritas Islam Riau',
        style: TextStyle(fontSize: 28.0, color: Colors.black54),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text( 
        'Fakultas Teknik UIR berdiri pada tahun 1964 dengan pertimbangan masih sangat langkanya Sarjana Teknik yang dimiliki/dihasilkan negara Indonesia pada umumnya dan Provinsi Riau pada khususnya pada saat itu. Jurusan pertama yang berdiri adalah Jurusan Teknik Sipil pada tanggal 1 Mei 1964 dengan Nomor SK pendirian : No. 64-a/B-SWT/P/1964. Kemudian pada tanggal 22 Mei 1986 secara resmi dibuka dua jurusan lagi sesuai SK Mendikbud nomor 0387/0/1988 yaitu Jurusan Teknik Perminyakan dan Teknik Mesin. Khusus untuk jurusan Teknik Perminyakan dan Teknik Mesin tenaga pengajar (dosen) secara mayoritas adalah diambil dari Ikatan Alumni ITB Riau yang sebahagian besar dari mereka adalah staf PT. Caltex Pacific indonesia.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[teknik, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}