import 'package:flutter/material.dart';
import 'data_berita.dart';

class DetailBeritaPage extends StatelessWidget {
  final Berita berita;

  DetailBeritaPage({required this.berita});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              berita.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 220.0, 16.0, 0.0),
              child: ListView(
                children: [
                  Text(
                    berita.judul,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    berita.kompetisi,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    berita.isiBerita,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'By : ${berita.penulis}',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
