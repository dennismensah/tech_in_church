import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/bible_chapter/bible_chapter_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookChapterPage extends StatelessWidget {
  final MapEntry<String, int> book;
  const BookChapterPage({Key? key, required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BibleChapterBloc>(),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: Text(
            book.key,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            itemCount: book.value,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  print('${book.key.toLowerCase()}+${index + 1}:1-2');
                  // context.read<BibleChapterBloc>().add(
                  //     BibleChapterEvent.bibleChapterFetched(
                  //         '${book.key.toLowerCase()}+${index + 1}:1-2'));
                  context.router
                      .push(BibleVerseRoute(book: book, chapter: index + 1));
                },
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text('${book.key} - Ch ${index + 1}'),
                    trailing: const FaIcon(FontAwesomeIcons.arrowRight),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
