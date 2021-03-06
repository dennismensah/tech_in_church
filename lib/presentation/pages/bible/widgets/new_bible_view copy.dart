import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class NewBibleView extends HookWidget {
  const NewBibleView({Key? key}) : super(key: key);

  static const books = <String, int>{
    'Matthew': 28,
    'Mark': 16,
    'Luke': 24,
    'John': 21,
    'Acts': 28,
    'Romans': 16,
    '1 Corinthians': 16,
    '2 Corinthians': 13,
    'Galatians': 6,
    'Ephesians': 6,
    'Philippians': 4,
    'Colossians': 4,
    '1 Thessalonians': 5,
    '2 Thessalonians': 3,
    '1 Timothy': 6,
    '2 Timothy': 4,
    'Titus': 3,
    'Philemon': 1,
    'Hebrews': 13,
    'James': 5,
    '1 Peter': 5,
    '2 Peter': 3,
    '1 John': 5,
    '2 John': 1,
    '3 John': 1,
    'Jude': 1,
    'Revelation': 22,
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 5),
      itemCount: books.length,
      itemBuilder: (context, int index) {
        return GestureDetector(
          onTap: () {
            context.router
                .push(BookChapterRoute(book: books.entries.elementAt(index)));
          },
          child: Card(
            elevation: 5,
            child: ListTile(
              title: Text(books.entries.elementAt(index).key),
              trailing: FaIcon(FontAwesomeIcons.arrowRight),
            ),
          ),
        );
      },
    );
  }
}
