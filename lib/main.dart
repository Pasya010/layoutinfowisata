import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Bay of Islands',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Northland, Newzealand',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: () => exit(0),
            color: Colors.black,
          ),
          const Text('4.2')
        ],
      ),
    );

    Widget button = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, 'CALL'),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, 'ROUTE'),
        _buildButtonColumn(Colors.black, Icons.share_outlined, 'SHARE'),
      ],
    );

    Widget text1 = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        '       Bay of Islands adalah region mikro yang terdiri dari kota-kota Opua, Paihia, Russell dan Kerikeri, dan wilayah luas kepulauan lepas pantai di antara Cape Brett dan Purerua Peninsula. Sebuah layanan feri penumpang beroperasi antara Paihia dan Russell, sementara angkutan feri menyediakan transportasi antara Opua dan Okiato. Cara terbaik untuk menemukan keindahan Bay of Islands adalah dengan mencarter yacht. \n\n       Bergabung dengan pesiar satu hari atau menyewa kayak laut. Banyak penyelenggara tur di region yang menawarkan berbagai perjalanan ke Cape Brett yang spektakuler dan Hole in the Rock di Piercy Island. Setelah mengelilingi Tapeka Point, yang terletak di utara Russell, Anda memasuki taman bermain petualangan maritim dengan banyak sekali margasatwa di antaranya penguin, lumba-lumba, ikan marlin, paus, burung rudal dan masih banyak spesies lainnya. Sebagian besar pulau-pulau di teluk memiliki jalur pejalan kaki dan ada bumi perkemahan di Urupukapuka Island (dikelola oleh Departemen Konservasi).',
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Bay of Islands',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/boi.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            title,
            button,
            text1,
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
