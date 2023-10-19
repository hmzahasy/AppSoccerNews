import 'package:flutter/material.dart';
import 'data_berita.dart';
import 'detail_berita_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Berita> semuaBerita = [...BeritaUtama, ...BeritaTerbaru];
    List<String> kompetisiList = getUniqueKompetisiList(semuaBerita);

    return DefaultTabController(
      length: kompetisiList.length + 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(
            'BolaInsight.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: _buildBeritaUtama(BeritaUtama),
            ),
            Container(
              color: Colors.black54,
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                labelColor: Colors.white,
                indicatorColor: Colors.amber,
                tabs: <Widget>[
                  Tab(text: 'All'),
                  for (var kompetisi in kompetisiList) Tab(text: kompetisi),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: TabBarView(
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    child: _buildBeritaTerbaru(semuaBerita),
                  ),
                  for (var kompetisi in kompetisiList)
                    Container(
                      color: Colors.black,
                      child: _buildBeritaTerbaruByKompetisi(
                          semuaBerita, kompetisi),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
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

  Widget _buildBeritaUtama(List<Berita> beritaList) {
    return PageView.builder(
      itemCount: beritaList.length,
      itemBuilder: (context, index) {
        final berita = beritaList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailBeritaPage(berita: berita),
              ),
            );
          },
          child: Stack(
            children: <Widget>[
              Image.network(
                berita.imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 250.0,
              ),
              Container(
                width: double.infinity,
                height: 250.0,
                color: Colors.black.withOpacity(0.2),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        berita.judul,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBeritaTerbaru(List<Berita> beritaList) {
    return ListView.builder(
      itemCount: beritaList.length,
      itemBuilder: (context, index) {
        final berita = beritaList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailBeritaPage(berita: berita),
              ),
            );
          },
          child: Card(
            color: Colors.black,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(3),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(berita.imageUrl),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          berita.judul,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          berita.kompetisi,
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBeritaTerbaruByKompetisi(
      List<Berita> beritaList, String kompetisi) {
    final filteredBerita =
        beritaList.where((berita) => berita.kompetisi == kompetisi).toList();

    return ListView.builder(
      itemCount: filteredBerita.length,
      itemBuilder: (context, index) {
        final berita = filteredBerita[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailBeritaPage(berita: berita),
              ),
            );
          },
          child: Card(
            color: Colors.black,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(3),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(berita.imageUrl),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          berita.judul,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
