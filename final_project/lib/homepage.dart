import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hai, Ajul!'),
        actions: [
          CircleAvatar(
            child: FlutterLogo(size: 20),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
              "Daftar Gambar",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                ScrollCard(imagePath: 'assets/cuban.jpg'),
                ScrollCard(imagePath: 'assets/femme.jpg'),
                ScrollCard(imagePath: 'assets/hausser.jpg'),
                ScrollCard(imagePath: 'assets/initio.jpg'),
                ScrollCard(imagePath: 'assets/lo.jpg'),
                ScrollCard(imagePath: 'assets/patisserie.jpg'),
                ScrollCard(imagePath: 'assets/tabriz.jpg'),
                ScrollCard(imagePath: 'assets/tdb.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollCard extends StatelessWidget {
  final String imagePath;

  const ScrollCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 300,
      height: 500,
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
