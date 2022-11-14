import 'package:flutter/material.dart';

// ignore: camel_case_types
class detail extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final url;
  // ignore: prefer_typing_uninitialized_variables
  final title;
  // ignore: prefer_typing_uninitialized_variables
  final content;
  // ignore: prefer_typing_uninitialized_variables
  final publishedAt;
  // ignore: prefer_typing_uninitialized_variables
  final author;
  // ignore: prefer_typing_uninitialized_variables
  final urlToImage;

  const detail({
    super.key,
    this.url,
    this.title,
    this.content,
    this.publishedAt,
    this.author,
    this.urlToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          urlToImage != null
              ? Image.network(urlToImage)
              : Container(
                  height: 250,
                  color: Colors.grey[200],
                ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 18),
                Text(
                  '$publishedAt',
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 5),
                Text('$content'),
                const Divider(),
                Text('Author : $author'),
                Text('$url'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
