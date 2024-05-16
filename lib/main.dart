import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Imágenes y Fuentes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageList(),
    );
  }
}

class ImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Imágenes y Fuentes'),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            image: AssetImage('assets/images/manzana.jpg'),
            title: 'Manzana',
            fontFamily: 'OpenSans',
          ),
          ListItem(
            image: AssetImage('assets/images/sanbernardo.jpg'),
            title: 'Perro',
            fontFamily: 'Lato',
          ),
          ListItem(
            image: AssetImage('assets/images/paris.jpg'),
            title: 'París',
            fontFamily: 'Ubuntu',
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String fontFamily;
  final String imageUrl;

  ListItem({
    required this.image,
    required this.title,
    required this.fontFamily,
    this.imageUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: imageUrl.isNotEmpty
          ? Image.network(imageUrl)
          : Image(image: image),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
