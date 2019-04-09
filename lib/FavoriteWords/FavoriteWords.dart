import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FavoriteWords extends StatelessWidget {
  FavoriteWords(this._saved);
  final Set<WordPair> _saved;

  Widget build(BuildContext context) {
    final _biggerFont = const TextStyle(fontSize: 18.0);

    final Iterable<ListTile> tiles = _saved.map(
      (WordPair pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );

    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Saved Suggesstions'),
      ),
      body: new ListView(
        children: divided,
      ),
    );
  }
}
