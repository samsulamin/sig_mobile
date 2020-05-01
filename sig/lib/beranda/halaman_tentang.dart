import 'package:flutter/material.dart';
import 'package:sig/beranda/beranda_appbar.dart';
import 'package:sig/constant.dart';

class Halamantentang extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  _TentangPageState createState() => new _TentangPageState();
}

class _TentangPageState extends State<Halamantentang> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'SIG Wisata Tegal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Hubungi Kami : ',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          /*3*/
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.red[500],
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.toc, 'Facebook'),
          _buildButtonColumn(color, Icons.call, 'Phone'),
          _buildButtonColumn(color, Icons.mail, 'Email'),
          _buildButtonColumn(color, Icons.feedback, 'Feedback'),
        ],
      ),
    );

    Widget textSection = Container(
      //color: GojekPallete.green,
      padding: const EdgeInsets.all(32),
      child: Text(
        'Objek wisata Pantai Alam Indah berada di Kota Tegal, Jawa Tengah. Dari jalan Pantura hanya berjarak 500 meter. Meskipun belum ada jalur angkutan kota yang menuju ke PAI, masyarakat dapat menjangkau dengan transportasi apa pun, termasuk berjalan kaki. PAI merupakan salah satu potensi yang turut menyumbangkan pendapatan asli daerah (PAD) kepada Pemerintah Kota Tegal melalui pemungutan tiket masuk dan retribusi parkir. Sebelumnya, PAI masih belum tertata. Pertamanan dan fasilitas di dalamnya masih seadanya, padahal minat masyarakat terhadap objek wisata itu cukup besar, terutama pada saat hari Minggu dan peringatan hari besar nasional.' ,
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: SigAppBar(),
        //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        body: ListView(
          children: [
            Image.asset(
              'assets/wtbr.png',
              width: 350,
              height: 280,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}