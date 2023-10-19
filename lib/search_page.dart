import 'package:flutter/material.dart';
import 'data_berita.dart';
import 'detail_berita_page.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Berita> semuaBerita = [...BeritaUtama, ...BeritaTerbaru];
    List<String> kompetisiList = getUniqueKompetisiList(semuaBerita);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BolaInsight.',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _searchController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.amber))),
              onChanged: (text) {},
            ),
            SizedBox(height: 16.0),
            Text(
              'Category',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: _buildKategoriList(kompetisiList, semuaBerita),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKategoriList(
    List<String> kompetisiList,
    List<Berita> semuaBerita,
  ) {
    return ListView.builder(
      itemCount: kompetisiList.length,
      itemBuilder: (context, index) {
        final kategori = kompetisiList[index];
        final beritaByKategori = semuaBerita
            .where((berita) => berita.kompetisi == kategori)
            .toList();

        return ExpansionTile(
          textColor: Colors.amber,
          iconColor: Colors.amber,
          title: Text(
            kategori,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            for (var berita in beritaByKategori)
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailBeritaPage(berita: berita),
                    ),
                  );
                },
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(berita.judul),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  List<String> getUniqueKompetisiList(List<Berita> beritaList) {
    List<String> kompetisiList = [];
    for (var berita in beritaList) {
      if (!kompetisiList.contains(berita.kompetisi)) {
        kompetisiList.add(berita.kompetisi);
      }
    }
    return kompetisiList;
  }
}
