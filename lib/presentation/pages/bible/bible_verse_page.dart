import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/bible_chapter/bible_chapter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';

class BibleVersePage extends StatelessWidget {
  final MapEntry<String, int> book;
  final int chapter;
  const BibleVersePage({Key? key, required this.book, required this.chapter})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<BibleChapterBloc>()
          ..add(BibleChapterEvent.bibleChapterFetched(
              '${book.key.toLowerCase()}+$chapter:1-20')),
        child: Scaffold(
          backgroundColor: AppColors.appColor,
          appBar: AppBar(
            title: Text(
              '${book.key} - Ch $chapter',
              style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
            ),
            backgroundColor: AppColors.appColor,
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0.0,
          ),
          body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: BlocBuilder<BibleChapterBloc, BibleChapterState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const SizedBox(),
                  loading: (_) => const Center(
                    child: CupertinoActivityIndicator(
                      radius: 30,
                    ),
                  ),
                  loadedSuccessfully: (e) => ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: e.bibleverses.verses.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${index + 1} .  ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: e.bibleverses.verses[index].text,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          // ?.copyWith(
                                          //   fontWeight: FontWeight.bold,
                                          // ),
                                    ),
                                  ],
                                ),
                              ),
                              // Text(
                              //   '${index+1} .',
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .subtitle1
                              //       ?.copyWith(
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              // ),
                              // SizedBox(height: 2,),
                              // Text(
                              //   e.bibleverses.verses[index].text,
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .subtitle1
                              //       ?.copyWith(
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              // ),

                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     Text(
                              //       e.galleries[index].title,
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .subtitle1
                              //           ?.copyWith(
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //     ),
                              //     Text(
                              //       formatDate(
                              //           DateTime.parse(e.galleries[index].created_at),
                              //           [M, ' ', dd, ', ', yyyy]),
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .subtitle2
                              //           ?.copyWith(color: Colors.grey),
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(
                              //   height: 7,
                              // ),
                              // CachedNetworkImage(
                              //   height: 200,
                              //   width: 1.sw,
                              //   imageUrl: e.galleries[index].thumbnail,
                              //   fit: BoxFit.cover,
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  loadedUnSuccessfully: (_) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.exclamationCircle,
                          size: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'An error occured. Please try again.',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
